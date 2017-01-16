
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.dialnet.source.model.LCOUser;
import com.dialnet.source.model.User;
import com.dialnet.source.model.UserLogin;
import com.dialnet.source.service.UserService;

@Controller
@SessionAttributes("custLogin")
public class UserController {
	
	@Autowired
	public UserService userService;
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
	
	
	@RequestMapping(value="/userlogin", method=RequestMethod.GET)
	public String Userlogin(Model model) {			
		UserLogin studentLogin = new UserLogin();		
		model.addAttribute("custLogin", studentLogin);
		return "userlogin";
	}
	
	@RequestMapping(value="/userlogin", method=RequestMethod.POST)
	public ModelAndView Userlogin(@Valid @ModelAttribute("custLogin") UserLogin studentLogin, BindingResult result) {
		if (result.hasErrors()) {
			//return "userlogin";
			return new ModelAndView("userlogin", "error", "There is some Error!!!");
		} else {
			boolean found1 = userService.findByLogin(studentLogin.getUserName(), studentLogin.getPassword());
			if (found1) {	
				String user=studentLogin.getUserName();
				//return "redirect:CustAccount.jsp";
				//return new ModelAndView("CustAccount", "user", user);
				User found = userService.get(studentLogin.getUserName());
				//System.out.println("LCO Controller LcoCode: "+found.getLoc_code());
				ModelAndView model=new ModelAndView("redirect:CustAccount.jsp");
				model.addObject("id", studentLogin.getUserName());
				model.addObject("UserName", found.getCustomer_name());
				model.addObject("vc_no", found.getCustomer_vc_no());
				model.addObject("stb_no", found.getCustomer_stb_no());
				model.addObject("Package_name", found.getPackage_name());
				model.addObject("Account_balance", found.getAccount_balance());
				model.addObject("Last_payment", found.getLast_payment());
				//model.addObject("Account_balance", found.get);
				model.addObject("Last_recharge_date", found.getLast_recharge_date());
				model.addObject("mobile", found.getCustomer_mobile());
				model.addObject("email", found.getCustomer_email());
				model.addObject("add", found.getCustomer_add());
				
				return model;
			} else {				
				//return "userlogin";
				return new ModelAndView("userlogin", "error", "Invalid Username or Password");
			}
		}
		
	}
	
	
	@RequestMapping(value="/UserDetail", method=RequestMethod.GET)
	public ModelAndView LCODEtail( @ModelAttribute("UserDetail") User studentLogin,@RequestParam("id") String id,BindingResult result) {
		System.out.println("LCO Controller LcoCode: "+id);
		if (result.hasErrors()) {
			//return "lcologin";
			return new ModelAndView("userlogin", "error", "There are some Errors");
			
		} else {
			User found = userService.get(id);
			System.out.println("LCO Controller LcoCode: "+found.getCustomer_name());
			ModelAndView model=new ModelAndView("redirect:CustAccount.jsp");
			model.addObject("id", found.getUsername());
			model.addObject("UserName", found.getCustomer_name());
			model.addObject("vc_no", found.getCustomer_vc_no());
			model.addObject("stb_no", found.getCustomer_stb_no());
			model.addObject("Package_name", found.getPackage_name());
			model.addObject("Account_balance", found.getAccount_balance());
			model.addObject("Last_payment", found.getLast_payment());
			//model.addObject("Account_balance", found.get);
			model.addObject("Last_recharge_date", found.getLast_recharge_date());
			model.addObject("mobile", found.getCustomer_mobile());
			model.addObject("email", found.getCustomer_email());
			model.addObject("add", found.getCustomer_add());
			
			return model;
		}
		
	}
	
	
	@RequestMapping(value="/CustRecharge", method=RequestMethod.GET)
	public ModelAndView CustRecharge( @ModelAttribute("UserDetail") User studentLogin,@RequestParam("id") String id,BindingResult result) {
		System.out.println("LCO Controller LcoCode: "+id);
		if (result.hasErrors()) {
			//return "lcologin";
			return new ModelAndView("userlogin", "error", "There are some Errors");
			
		} else {
			User found = userService.get(id);
			System.out.println("LCO Controller LcoCode: "+found.getCustomer_name());
			ModelAndView model=new ModelAndView("redirect:Custrecharge.jsp");
			model.addObject("id", found.getUsername());
			model.addObject("UserName", found.getCustomer_name());
			model.addObject("vc_no", found.getCustomer_vc_no());
			//model.addObject("stb_no", found.getCustomer_stb_no());
			model.addObject("Package_name", found.getPackage_name());
			model.addObject("Account_balance", found.getAccount_balance());
			model.addObject("Last_payment", found.getLast_payment());
			//model.addObject("Account_balance", found.get);
			model.addObject("Last_recharge_date", found.getLast_recharge_date());
			//model.addObject("mobile", found.getCustomer_mobile());
			//model.addObject("email", found.getCustomer_email());
			//model.addObject("add", found.getCustomer_add());
			
			return model;
		}
		
	}
	@RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(HttpSession session ) {
       session.invalidate();
       return "logout";
    }
	
	
}
