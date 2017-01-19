

package com.dialnet.source.controller;

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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.dialnet.source.model.LMUser;
import com.dialnet.source.model.UserLogin;
import com.dialnet.source.service.LMService;

@Controller
@SessionAttributes("lmlogin")
public class LMController {
	
	@Autowired
	public LMService userService;
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
	@RequestMapping(value="/lmlogin", method=RequestMethod.GET)
	public String login(Model model) {			
		UserLogin studentLogin = new UserLogin();		
		model.addAttribute("lmlogin", studentLogin);
		return "lmlogin";
	}
	
	@RequestMapping(value="/lmlogin", method=RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute("lmlogin") UserLogin studentLogin, BindingResult result) {
		if (result.hasErrors()) {
			//return "lmlogin";
			return new ModelAndView("lmlogin", "error", "There is some Error!!!");
		} else {
			String user=studentLogin.getUserName();
			boolean found = userService.findByLogin(studentLogin.getUserName(), studentLogin.getPassword());
			if (found) {				
				//return "redirect:LMDashboard.jsp";
				return new ModelAndView("LMDashborad", "user", user);
			} else {				
				//return "userlogin";
				return new ModelAndView("lmlogin", "error","Invalid Username or Password!!!");
			}
		}
		
	}
	
	/*
	@RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(HttpSession session ) {
       session.invalidate();
       return "logout";
    }
	*/
	
}
