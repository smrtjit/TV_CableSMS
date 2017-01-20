
package com.dialnet.source.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.dialnet.source.model.AllCollections;
import com.dialnet.source.model.AllComplaints;

import com.dialnet.source.model.LCOPackages;
import com.dialnet.source.model.LCOUser;
import com.dialnet.source.model.LCOUserRegistration;
import com.dialnet.source.model.User;
//import com.dialnet.source.model.LCOUserRegistration;
import com.dialnet.source.model.UserLogin;
import com.dialnet.source.service.AllCollectionService;
import com.dialnet.source.service.AllComplaintService;

import com.dialnet.source.service.LCOService;
import com.dialnet.source.service.LCOUserRegistrationService;
//import com.dialnet.source.service.LCOUserRegService;
import com.dialnet.source.service.UserService;

@Controller
@SessionAttributes("lcoLogin")
public class LCOController {

	@Autowired
	public LCOService lcoService;

	@Autowired
	public LCOUserRegistrationService lcoUserRegService;

	@Autowired
	public UserService userService;

	@Autowired
	public AllComplaintService LCOComplaintRepository;

	@Autowired
	public AllCollectionService LCOCollectionRepository;

	/*
	 * @RequestMapping(value="/signup", method=RequestMethod.GET) public String
	 * signup(Model model) { User student = new User();
	 * model.addAttribute("student", student); return "signup"; }
	 * 
	 * @RequestMapping(value="/signup", method=RequestMethod.POST) public String
	 * signup(@Valid @ModelAttribute("student") User student, BindingResult
	 * result, Model model) { if(result.hasErrors()) { return "signup"; } else
	 * if(studentService.findByUserName(student.getUserName())) {
	 * model.addAttribute("message", "User Name exists. Try another user name");
	 * return "signup"; } else { studentService.save(student);
	 * model.addAttribute("message", "Saved student details"); return
	 * "redirect:login.html"; } }
	 */
	@RequestMapping(value = "/lcologin", method = RequestMethod.GET)
	public String login(Model model) {
		UserLogin studentLogin = new UserLogin();
		model.addAttribute("lcoLogin", studentLogin);
		return "lcologin";
	}

	@RequestMapping(value = "/lcologin", method = RequestMethod.POST)
	public ModelAndView login(@Valid @ModelAttribute("lcoLogin") UserLogin studentLogin, BindingResult result,
			ModelMap map, RedirectAttributes redir) {
		if (result.hasErrors()) {
			// return "lcologin";
			return new ModelAndView("lcologin", "error", "There is some Errors");

		} else {
			boolean found = lcoService.findByLogin(studentLogin.getUserName(), studentLogin.getPassword());
			String user = studentLogin.getUserName();
			if (found) {
				ModelAndView modelAndView = new ModelAndView();
				modelAndView.setViewName("redirect:allLCOComplain.html?user=" + user);
				return modelAndView;
				// map.addAttribute("userList", userList);
				// map.addAttribute("user", user);
				// return new ModelAndView("Dashboard", map);
				// return new ModelAndView("redirect:Dashboard.jsp", "user",
				// user);
			} else {
				// model.addAttribute("message", "You have been logged out
				// successfully.");
				// return "lcologin";
				return new ModelAndView("lcologin", "error", "Invalid Username or Password!!!");
			}
		}

	}

	@RequestMapping(value = "/LCODetail", method = RequestMethod.GET)
	public ModelAndView LCODEtail(@ModelAttribute("LCODetail") LCOUser studentLogin, @RequestParam("user") String user,
			BindingResult result) {
		System.out.println("LCO Controller LcoCode: " + user);
		if (result.hasErrors()) {
			// return "lcologin";
			return new ModelAndView("lcologin", "error", "There are some Errors");

		} else {
			LCOUser found = lcoService.get(user);
			// System.out.println("LCO Controller LcoCode:
			// "+found.getLoc_code());
			List data = new ArrayList();
			ModelAndView model = new ModelAndView("MyAccount");
			model.addObject("user", user);
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

	@RequestMapping(value = "/OldUserInfo", method = RequestMethod.GET)
	public ModelAndView OldUserInfo(ModelMap map, @RequestParam("user") String user) {
		// this method should retrieve the data for all users
		List<LCOUserRegistration> userList = lcoUserRegService.findData();
		// for (LCOUserRegistration temp : userList) {
		// System.out.println("Complaint Type: "+temp.getUsername()+",Complaint
		// time: "+temp.getMobile());
		// }
		map.addAttribute("userList", userList);
		map.addAttribute("id", user);
		return new ModelAndView("NewUser", map);
	}

	@RequestMapping(value = "/oldConnections", method = RequestMethod.GET)
	public ModelAndView CustRecharge(ModelMap map, @RequestParam("user") String user) {
		List<User> userList = userService.findData();
		for (User temp : userList) {
			System.out.println("User Name: " + temp.getUsername() + ",Mobile No.: " + temp.getCustomer_mobile());

		}
		map.addAttribute("userList", userList);
		map.addAttribute("user", user);
		return new ModelAndView("Connection", map);

	}

	@RequestMapping(value = "/allLCOComplain", method = RequestMethod.GET)
	public ModelAndView allLCOComplain(ModelMap map, @RequestParam("user") String user) {
		List<AllComplaints> userList = LCOComplaintRepository.findData();
		for (AllComplaints temp : userList) {
			System.out.println("User Name: " + temp.getComplaint_no() + ",Mobile No.: " + temp.getCustomer_vcno());

		}

		map.addAttribute("userList", userList);
		map.addAttribute("user", user);
		return new ModelAndView("Dashboard", map);

	}

	@RequestMapping(value = "/allLCOCollection", method = RequestMethod.GET)
	public ModelAndView allLCOCollection(ModelMap map, @RequestParam("user") String user) {
		List<AllCollections> userList = LCOCollectionRepository.findData();
		for (AllCollections temp : userList) {
			System.out.println("User Name: " + temp.getCust_Name() + ",Invoice No.: " + temp.getInvoice());

		}

		map.addAttribute("userList", userList);
		map.addAttribute("user", user);
		return new ModelAndView("Collection", map);

	}



	/*
	 * @Autowired(required=true) public LCOUserRegService lcoUserRegService;
	 * 
	 * @RequestMapping(value="/createUser", method=RequestMethod.GET) public
	 * ModelAndView createUser( @ModelAttribute("LCOUserList")
	 * LCOUserRegistration studentLogin,@RequestParam("id") String
	 * id,BindingResult result) { if (result.hasErrors()) { //return "lcologin";
	 * return new ModelAndView("lcologin", "error", "There are some Errors");
	 * 
	 * } else { List<LCOUserRegistration> found = lcoUserRegService.getAll();
	 * ModelAndView model=new ModelAndView("redirect:NewUser.jsp", "user", id);
	 * //model.addObject("LCOUserList", found);
	 * 
	 * return model; }
	 * 
	 * }
	 * 
	 */
	/*
	 * @RequestMapping(value="/logout", method=RequestMethod.GET) public String
	 * logout(HttpSession session ) { session.invalidate(); return "logout"; }
	 */
}
