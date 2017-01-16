
package com.dialnet.source.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.dialnet.source.model.LCOUser;
//import com.dialnet.source.model.LCOUserRegistration;
import com.dialnet.source.model.UserLogin;
import com.dialnet.source.service.LCOService;
//import com.dialnet.source.service.LCOUserRegService;

@Controller
@SessionAttributes("lcoLogin")
public class LCOController {
	
	@Autowired
	public LCOService lcoService;
	/*
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(Model model) {
		User student = new User();		
		model.addAttribute("student", student);		
		return "signup";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signup(@Valid @ModelAttribute("student") User student, BindingResult result, Model model) {		
		if(result.hasErrors()) {
			return "signup";
		} else if(studentService.findByUserName(student.getUserName())) {
			model.addAttribute("message", "User Name exists. Try another user name");
			return "signup";
		} else {
			studentService.save(student);
			model.addAttribute("message", "Saved student details");
			return "redirect:login.html";
		}
	}
	*/
	@RequestMapping(value="/lcologin", method=RequestMethod.GET)
	public String login(Model model) {			
		UserLogin studentLogin = new UserLogin();		
		model.addAttribute("lcoLogin", studentLogin);
		return "lcologin";
	}
	
	@RequestMapping(value="/lcologin", method=RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute("lcoLogin") UserLogin studentLogin, BindingResult result, RedirectAttributes redir) {
		if (result.hasErrors()) {
			//return "lcologin";
			return new ModelAndView("lcologin", "error", "There is some Errors");
			
		} else {
			boolean found = lcoService.findByLogin(studentLogin.getUserName(), studentLogin.getPassword());
			String user=studentLogin.getUserName();
			if (found) {	
				
				return new ModelAndView("redirect:Dashboard.jsp", "user", user);
			} else {	
				//model.addAttribute("message", "You have been logged out successfully.");
				//return "lcologin";
				return new ModelAndView("lcologin", "error", "Invalid Username or Password!!!");
			}
		}
		
	}
	
	
	@RequestMapping(value="/LCODetail", method=RequestMethod.GET)
	public ModelAndView LCODEtail( @ModelAttribute("LCODetail") LCOUser studentLogin,@RequestParam("id") String id,BindingResult result) {
		System.out.println("LCO Controller LcoCode: "+id);
		if (result.hasErrors()) {
			//return "lcologin";
			return new ModelAndView("lcologin", "error", "There are some Errors");
			
		} else {
			LCOUser found = lcoService.get(id);
			//System.out.println("LCO Controller LcoCode: "+found.getLoc_code());
			ModelAndView model=new ModelAndView("redirect:MyAccount.jsp");
			model.addObject("LCOCode", found.getLoc_code());
			model.addObject("LCOName", found.getLoc_name());
			model.addObject("LoginID", found.getLogin_id());
			model.addObject("MiddleName", found.getM_name());
			model.addObject("JVNum", found.getJv_no());
			model.addObject("BRMPoid", found.getBrm_po_id());
			model.addObject("Mobile", found.getMobile());
			model.addObject("Add", found.getAddress());
			model.addObject("Name", found.getLoc_name());
			model.addObject("Fname", found.getF_name());
			model.addObject("Lname", found.getL_name());
			model.addObject("DirNum", found.getDirect_no());
			model.addObject("Account", found.getAccount_no());
			model.addObject("Email", found.getEmaiil());
			model.addObject("City", found.getCity());
			return model;
		}
		
	}
	
	
	/*
	@Autowired(required=true)
	public LCOUserRegService lcoUserRegService;
	
	@RequestMapping(value="/createUser", method=RequestMethod.GET)
	public ModelAndView createUser( @ModelAttribute("LCOUserList") LCOUserRegistration studentLogin,@RequestParam("id") String id,BindingResult result) {
		if (result.hasErrors()) {
			//return "lcologin";
			return new ModelAndView("lcologin", "error", "There are some Errors");
			
		} else {
			List<LCOUserRegistration> found = lcoUserRegService.getAll();
			ModelAndView model=new ModelAndView("redirect:NewUser.jsp", "user", id);
			//model.addObject("LCOUserList", found);
			
			return model;
		}
		
	}
	
	*/
	/*
	@RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(HttpSession session ) {
       session.invalidate();
       return "logout";
    }
	*/
}
