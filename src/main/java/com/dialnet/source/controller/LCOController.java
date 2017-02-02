
package com.dialnet.source.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import javax.validation.Valid;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dialnet.source.model.AllCollections;
import com.dialnet.source.model.AllComplaints;
import com.dialnet.source.model.BulkRechargeAmount;
import com.dialnet.source.model.Cust_Invoice;
import com.dialnet.source.model.Customer_Invoice1;
import com.dialnet.source.model.LCOUser;
import com.dialnet.source.model.LCO_Setting;
import com.dialnet.source.model.LMUser;
import com.dialnet.source.model.PackageInfo;
import com.dialnet.source.model.STBStock;
import com.dialnet.source.model.TaxInformation;
import com.dialnet.source.model.User;
//import com.dialnet.source.model.LCOUserRegistration;
import com.dialnet.source.model.UserLogin;
import com.dialnet.source.model.VCStock;
import com.dialnet.source.service.AllCollectionService;
import com.dialnet.source.service.AllComplaintService;
import com.dialnet.source.service.CustSettingService;
import com.dialnet.source.service.Cust_InvoiceService;
import com.dialnet.source.service.CustomerInvoiceServiceImpl;
import com.dialnet.source.service.LCOUserService;
import com.dialnet.source.service.LMUserService;
import com.dialnet.source.service.PackageInfoService;
import com.dialnet.source.service.STBStockService;
import com.dialnet.source.service.SubscriberService;
import com.dialnet.source.service.TaxInfoService;
import com.dialnet.source.service.VCStockService;
import com.google.gson.Gson;

@Controller
@SessionAttributes("lcoLogin")
public class LCOController {

	@Autowired
	public LCOUserService lcoService;

	@Autowired
	public SubscriberService userService;

	@Autowired
	public AllComplaintService LCOComplaintRepository;

	@Autowired
	public AllCollectionService LCOCollectionRepository;

	@Autowired
	public STBStockService stbService;

	@Autowired
	public VCStockService vcService;

	@Autowired
	LMUserService lmuserservice;

	@Autowired
	PackageInfoService pckgservice;

	@Autowired
	TaxInfoService taxService;

	@Autowired
	Cust_InvoiceService invoice;
	
	
	@Autowired
	CustSettingService settingService;
	
	
	@Autowired
	CustomerInvoiceServiceImpl invoice1;

	@RequestMapping(value = "/lcologin", method = RequestMethod.GET)
	public String login(Model model) {
		UserLogin studentLogin = new UserLogin();
		model.addAttribute("lcoLogin", studentLogin);
		return "lcologin";
	}

	@RequestMapping(value = "/lcologin", method = RequestMethod.POST)
	public String login(@Valid @ModelAttribute("lcoLogin") UserLogin studentLogin, BindingResult result, ModelMap map,
			RedirectAttributes redir) {
		if (result.hasErrors()) {
			// return "lcologin";
			map.addAttribute("error", "There is some Errors");
			// return new ModelAndView("lcologin", "error", "There is some
			// Errors");
			return "lcologin";

		} else {
			boolean found = lcoService.findByLogin(studentLogin.getUserName(), studentLogin.getPassword());
			String user = studentLogin.getUserName();
			if (found) {
				map.addAttribute("user", user);
				// return new ModelAndView("redirect:LCOHome.html", map);
				return "redirect:LCOHome.html?user=" + user;
			} else {
				map.addAttribute("error", "Invalid Username or Password!!!");
				// return new ModelAndView("lcologin", "error", "Invalid
				// Username or Password!!!");
				return "lcologin";
			}
		}

	}

	@RequestMapping(value = "/LCOHome", method = RequestMethod.GET)
	public String lcohome(ModelMap map, @RequestParam("user") String user) {
		map.addAttribute("user", user);
		return "LCOHome";
	}

	@RequestMapping(value = "/allLCOCollection", method = RequestMethod.GET)
	public ModelAndView allLCOCollection(ModelMap map, @RequestParam("user") String user, Integer offset,
			Integer maxResults) {
		List<AllCollections> userList = LCOCollectionRepository.list(offset, maxResults);

		map.addAttribute("count", LCOCollectionRepository.count());
		map.addAttribute("offset", offset);
		/*
		 * for (AllCollections temp : userList) {
		 * System.out.println("User Name: "+temp.getCust_Name()+",Invoice No.: "
		 * +temp.getInvoice());
		 * 
		 * }
		 */
		map.addAttribute("userList", userList);
		map.addAttribute("user", user);
		return new ModelAndView("Collection", map);

	}

	@RequestMapping(value = "/oldConnections", method = RequestMethod.GET)
	public ModelAndView CustRecharge(ModelMap map, @RequestParam("user") String user, Integer offset,
			Integer maxResults) {

		User userForm = new User();
		map.addAttribute("subForm", userForm);
		List<String> al = pckgservice.getAllPckgNames();
		map.addAttribute("pckInfo", al);
		List<User> userList = userService.list(offset, maxResults);
		System.out.println("calling oldConnections : " + offset + "," + maxResults + "," + userList.size());
		/*
		 * for (User temp : userList) {
		 * System.out.println("User Name: "+temp.getUsername()+",Mobile No.: "
		 * +temp.getCustomer_mobile());
		 * 
		 * }
		 */
		map.addAttribute("count", userService.count());
		map.addAttribute("offset", offset);
		map.addAttribute("userList", userList);
		map.addAttribute("user", user);
		return new ModelAndView("Connection", map);

	}

	@RequestMapping(value = "/LCODetail", method = RequestMethod.GET)
	public ModelAndView LCODEtail(@ModelAttribute("LCODetail") LCOUser studentLogin, @RequestParam("user") String user,
			BindingResult result) {
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
			model.addObject("state", found.getState());
			return model;
		}

	}

	@RequestMapping(value = "/allLCOComplain", method = RequestMethod.GET)
	public ModelAndView allLCOComplain(ModelMap map, @RequestParam("user") String user, Integer offset,
			Integer maxResults) {

		List<AllComplaints> userList = LCOComplaintRepository.list(offset, maxResults);
		map.addAttribute("count", LCOComplaintRepository.count());
		map.addAttribute("offset", offset);
		/*
		 * for (AllComplaints temp : userList) {
		 * System.out.println("User Name: "+temp.getComplaint_no()
		 * +",Mobile No.: "+temp.getCustomer_vcno());
		 * 
		 * }
		 */
		map.addAttribute("userList", userList);

		map.addAttribute("user", user);
		return new ModelAndView("Dashboard", map);

	}

	@RequestMapping(value = "/OldUserInfo", method = RequestMethod.GET)
	public ModelAndView OldUserInfo(ModelMap map, @RequestParam("user") String user, Integer offset,
			Integer maxResults) {
		System.out.println("Old User Info Called");
		LMUser userForm = new LMUser();
		map.addAttribute("userForm", userForm);
		ArrayList<String> departments = new ArrayList<String>();
		departments.add("Select Repsonsibility");
		departments.add("Collection");
		departments.add("Local Fault Repair");
		departments.add("Others");

		List<LMUser> userList = lmuserservice.list(offset, maxResults);
		map.addAttribute("count", lmuserservice.count());
		map.addAttribute("offset", offset);

		map.addAttribute("resp", departments);
		map.addAttribute("userList", userList);
		map.addAttribute("id", user);
		return new ModelAndView("NewUser", map);
	}

	@RequestMapping(value = "/lcoTopUp", method = RequestMethod.GET)
	public ModelAndView topUp(ModelMap map, @RequestParam("user") String user) {
		map.addAttribute("user", user);
		return new ModelAndView("TopUp", map);
	}

	@RequestMapping(value = "/lcoBilling", method = RequestMethod.GET)
	public ModelAndView lcoBilling(ModelMap map, @RequestParam("user") String user, Integer offset,
			Integer maxResults,Integer offset2,Integer maxResults2) {

		Calendar cal = Calendar.getInstance();
		int dayOfMonth = cal.get(Calendar.DAY_OF_MONTH);
		String dayOfMonthStr = String.valueOf(dayOfMonth);
		LCO_Setting setting=settingService.getByID(user);
		if(dayOfMonthStr.equalsIgnoreCase(setting.getBilling_cycle())){
			List<User> tmp = userService.listForBill(user, offset2, maxResults2);
			System.out.println("Lco Billing user data: "+tmp.size()+",counter: "+userService.countForBill(user));
			map.addAttribute("BillUser", tmp);
			map.addAttribute("countForBill", userService.countForBill(user));
			map.addAttribute("offsetForBill", offset);
		}
		
		List<Customer_Invoice1> custtmp = invoice1.list(user,offset, maxResults);
		map.addAttribute("count", invoice1.count(user));
		map.addAttribute("offset", offset);
		map.addAttribute("BillsDetail", custtmp);
		map.addAttribute("user", user);
		return new ModelAndView("BulkBilling", map);
	}

	@RequestMapping(method = RequestMethod.GET, value = "register")
	public ModelAndView processRegistration(@ModelAttribute("userForm") LMUser lmuser, ModelMap map,
			@RequestParam("user") String user) {

		// System.out.println("username: " + lmuser.getUsername());
		// System.out.println("password: " + lmuser.getEmail_id());
		// System.out.println("email: " + lmuser.getMobile());
		lmuser.setPassword(getSaltString());
		lmuser.setUsername(lmuser.getMobile());
		lmuser.setTimestamp(getDate());
		lmuserservice.add(lmuser);
		map.addAttribute("user", user);
		return new ModelAndView("redirect:OldUserInfo.html", map);

	}

	@RequestMapping(value = "/searchVCbyLCO", method = RequestMethod.GET)
	public ModelAndView searchVCbyLCO(ModelMap map, @RequestParam("user") String user,
			@RequestParam("VC_No") String VC_No) {
		map.addAttribute("user", user);
		System.out.println("VC no: " + VC_No);
		User tmp = userService.findByVCNO(VC_No);
		if (tmp == null) {
			map.addAttribute("error", "VC Number is not Valid");
		} else {
			map.addAttribute("userDetails", tmp);
			PackageInfo pck = pckgservice.getByID(tmp.getPackage_name());
			map.addAttribute("pckinfo", pck.getName());
			System.out.println("name: " + tmp.getCustomer_name());
		}

		return new ModelAndView("TopUp", map);
	}

	@RequestMapping(value = "/searchCollectionLCO", method = RequestMethod.GET)
	public ModelAndView searchByanyOne(ModelMap map, @RequestParam("user") String user,
			@RequestParam("VC_No") String VC_No, @RequestParam("fdate") String fdate,
			@RequestParam("edate") String edate, @RequestParam("mobile") String mobile,
			@RequestParam("status") String status, @RequestParam("agent") String agent, Integer offset,
			Integer maxResults) {
		map.addAttribute("user", user);
		System.out.println("VC no: " + VC_No);
		List<AllCollections> tmp = LCOCollectionRepository.getByAnyOne(fdate, edate, VC_No, mobile, status, agent,
				offset, maxResults);

		System.out.println("tmp.size()***************: " + tmp.size());
		if (tmp.size() < 1) {
			map.addAttribute("error", "No Data Found!!!");
			System.out.println("No Data Found........................");
		} else {
			map.addAttribute("userList", tmp);
			map.addAttribute("count",
					LCOCollectionRepository.countForSearch(fdate, edate, VC_No, mobile, status, agent));
			map.addAttribute("offset", offset);
		}

		return new ModelAndView("Collection", map);
	}

	@RequestMapping(value = "/addNewUser", method = RequestMethod.GET)
	public ModelAndView addNewUser(@ModelAttribute("subForm") User sub, ModelMap map, @RequestParam("user") String user,
			@RequestParam("username") String username) {
		System.out.println("user name for inserting new connection: " + sub.getCustomer_name() + ",user: " + username);
		sub.setUsername(username);
		sub.setPassword(getSaltString());
		sub.setTimestamp(getDate());
		sub.setLast_recharge_date(getDate());
		sub.setLast_payment(sub.getAccount_balance());
		userService.add(sub);
		map.addAttribute("user", user);
		return new ModelAndView("redirect:oldConnections.html", map);
	}

	@RequestMapping(value = "/searchComplainByanyOne", method = RequestMethod.GET)
	public ModelAndView searchComplainByanyOne(ModelMap map, @RequestParam("user") String user,
			@RequestParam("VC_No") String VC_No, @RequestParam("fdate") String fdate,
			@RequestParam("edate") String edate, @RequestParam("mobile") String mobile,
			@RequestParam("status") String pckg) {
		map.addAttribute("user", user);
		System.out.println("VC no: " + VC_No);
		List<AllComplaints> tmp = LCOComplaintRepository.getByAnyOne(fdate, edate, VC_No, mobile, pckg);
		System.out.println("tmp.size()***************: " + tmp.size());
		if (tmp.size() < 1) {
			map.addAttribute("error", "No Data Found!!!");
			System.out.println("No Data Found........................");
		} else {
			map.addAttribute("userList", tmp);
		}

		return new ModelAndView("Dashboard", map);
	}

	@RequestMapping(value = "/searchLCOConByLCO", method = RequestMethod.GET)
	public ModelAndView searchOlConByLCO(ModelMap map, @RequestParam("user") String user,
			@ModelAttribute("subForm") User sub, @RequestParam("VC_No") String VC_No,
			@RequestParam("fdate") String fdate, @RequestParam("edate") String edate,
			@RequestParam("mobile") String mobile, @RequestParam("status") String status,
			@RequestParam("stb_no") String stb, @RequestParam("pckg") String pckg, Integer offset, Integer maxResults) {
		User userForm = new User();
		map.addAttribute("subForm", userForm);
		map.addAttribute("user", user);
		List<String> al = pckgservice.getAllPckgNames();
		map.addAttribute("pckInfo", al);
		System.out.println("status in searchLCOConByLCO: " + status);
		if (status.equals("0"))
			status = "";
		List<User> tmp = userService.userListForSearch(fdate, edate, stb, VC_No, mobile, status, pckg, offset,
				maxResults);
		System.out.println("tmp.size()***************: " + tmp.size());
		if (tmp.size() < 1) {
			map.addAttribute("error", "No Data Found!!!");
			System.out.println("No Data Found........................");
		} else {
			map.addAttribute("count", userService.countForSearch(fdate, edate, stb, VC_No, mobile, status, pckg));
			map.addAttribute("offset", offset);
			map.addAttribute("userList", tmp);
		}

		return new ModelAndView("Connection", map);
	}

	@RequestMapping(value = "/lcoaccountMgmt", method = RequestMethod.GET)
	public String accountMgmt(@RequestParam("user") String user, Model model) {
		model.addAttribute("user", user);
		return "LCOAccountMgmt";
	}

	@RequestMapping(value = "/lcostock", method = RequestMethod.GET)
	public String lcoStock(@RequestParam("user") String user, Model model, Integer offset, Integer maxResults) {

		List<STBStock> tmp = stbService.list(offset, maxResults);
		model.addAttribute("countForSTB", stbService.count());
		model.addAttribute("offsetForSTB", offset);

		List<VCStock> tmp1 = vcService.list(offset, maxResults);
		model.addAttribute("countForVC", vcService.count());
		model.addAttribute("offsetForVC", offset);
		/*
		 * System.out.println("LCO Stock size: "+tmp.size()); for(STBStock st:
		 * tmp){
		 * System.out.println("Data Check for Setup Box: "+st.getStb_box_no());
		 * }
		 */
		model.addAttribute("stbList", tmp);
		model.addAttribute("vcList", tmp1);
		model.addAttribute("user", user);
		return "LCOStock";
	}

	@RequestMapping(value = "/updateVCStatus", method = RequestMethod.GET)
	public String updateVCStatus(@RequestParam("user") String user, @RequestParam("VC_No") String vcc,
			@RequestParam("vcStatus") String status, Model model) {
		System.out.println("Update Status check data: " + vcc + "," + status + "," + user);
		int result = vcService.upStatus(vcc, status);
		System.out.println("Result: " + result);
		model.addAttribute("user", user);
		return "redirect:lcostock.html";
	}

	@RequestMapping(value = "/stbUpdateLCO", method = RequestMethod.GET)
	public String stbUpdateLCO(@RequestParam("user") String user, @RequestParam("STB") String vcc,
			@RequestParam("stbStatus") String status, Model model) {
		System.out.println("Update Status check data: " + vcc + "," + status + "," + user);
		int result = stbService.upSTB(vcc, status);
		System.out.println("Result: " + result);
		model.addAttribute("user", user);
		return "redirect:lcostock.html";
	}

	@RequestMapping(value = "/createSingleBill", method = RequestMethod.GET)
	public String createSingleBill(@RequestParam("user") String user, @RequestParam("CustId") String id, Model model) {
		System.out.println("Customer Id: " + id);
		createBill(user, id);
		model.addAttribute("user", user);
		return "redirect:lcoBilling.html";
	}
	
	@RequestMapping(value = "/createMultipleBill", method = RequestMethod.GET)
	public String createMultipleBill(@RequestParam("user") String user, Model model) {
		List<User> tmp = userService.findUserForBillGeneration(user);
		System.out.println("createMultipleBill: "+tmp.size());
		
		for(User data: tmp){
			System.out.println("Create bill in loop: "+data.getUsername());
			createBill(user, data.getUsername());
		}
		
		model.addAttribute("user", user);
		return "redirect:lcoBilling.html";
	}

	@ResponseBody
	@RequestMapping(value = "/printBill", method = RequestMethod.GET)
	public String printBill(@RequestParam("user") String user, @RequestParam("invoice") String invoiceid,
			ModelMap model) {
		System.out.println("Invoice Details check data: " + invoiceid + "," + user);
		Customer_Invoice1 result = invoice1.getByInvoiceId(invoiceid);
		System.out.println("Result: " + result.getInvoice_No());
		Gson gson = new Gson();
		String json = gson.toJson(result);
		model.addAttribute("user", user);
		return json;
		// return new ModelAndView(json);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/bulkDetails", method = RequestMethod.GET)
	public String bulkDetails(@RequestParam("user") String user, @RequestParam("invoice") String invoiceid,
			ModelMap model) {
		System.out.println("bulkDetails Invoice Details check data: " + invoiceid + "," + user);
		Cust_Invoice result = invoice.getByInvoice(invoiceid);
		System.out.println("Result: " + result.getInvoice_No());
		Gson gson = new Gson();
		String json = gson.toJson(result);
		model.addAttribute("user", user);
		return json;
		// return new ModelAndView(json);
	}



	//////////////////////////////// Sarbjeet
	//////////////////////////////// code////////////////////////////////////////////

	@RequestMapping(value = "/processExcel", method = RequestMethod.POST)
	public String processExcel(Model model, @RequestParam("excelfile") MultipartFile excelfile,
			@RequestParam("user") String id) {
		try {

			List<BulkRechargeAmount> lstUser = new ArrayList<BulkRechargeAmount>();
			int i = 0;
			System.out.println("file not found name \t" + excelfile.getInputStream());
			// File file= new File();
			HSSFWorkbook workbook = new HSSFWorkbook(excelfile.getInputStream());
			String ss = excelfile.getName();
			HSSFSheet worksheet = workbook.getSheetAt(0);
			int noOfColumns = worksheet.getRow(0).getLastCellNum();
			System.out.println("Column count \t" + noOfColumns);
			if (noOfColumns == 7) {
				while (i <= worksheet.getLastRowNum()) {
					BulkRechargeAmount user = new BulkRechargeAmount();
					HSSFRow row = worksheet.getRow(i++);
					user.setCustomerid((int) row.getCell(0).getNumericCellValue());
					System.out.println("I am here 0\t " + row.getCell(0));

					user.setCustomername(row.getCell(1).getStringCellValue());
					System.out.println("I am here 1 \t" + row.getCell(1));

					user.setCustomeraddress(row.getCell(2).getStringCellValue());
					System.out.println("I am here 2\t" + row.getCell(2));

					user.setCustomerpackagename(row.getCell(3).getStringCellValue());
					System.out.println("I am here 3 \t" + row.getCell(3));

					user.setCustomermobileno(row.getCell(4).getStringCellValue());
					System.out.println("I am here 4\t" + row.getCell(4));

					user.setCustomeremailid(row.getCell(5).getStringCellValue());
					System.out.println("I am here 5\t" + row.getCell(5));

					user.setCustomeramountofrecharge((float) row.getCell(6).getNumericCellValue());
					System.out.println("I am here 6\t" + row.getCell(6));
					lstUser.add(user);
				}
				model.addAttribute("lstUser", lstUser);
				model.addAttribute("user", id);
			} else {
				model.addAttribute("error", "File is Not Valid");
				model.addAttribute("user", id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "TopUp";
	}

	@RequestMapping(value = "/gf", method = RequestMethod.POST)
	public String processExcel2003(Model model, @RequestParam("excelfile") MultipartFile excelfile,
			@RequestParam("user") String id) {
		try {
			List<BulkRechargeAmount> lstUser = new ArrayList<BulkRechargeAmount>();
			int i = 0;
			System.out.println("I am here 0\t ");
			XSSFWorkbook workbook = new XSSFWorkbook(excelfile.getInputStream());
			XSSFSheet worksheet = workbook.getSheetAt(0);
			while (i <= worksheet.getLastRowNum()) {
				BulkRechargeAmount user = new BulkRechargeAmount();
				XSSFRow row = worksheet.getRow(i++);
				user.setCustomerid((int) row.getCell(0).getNumericCellValue());
				System.out.println("I am here 0\t " + row.getCell(0));

				user.setCustomername(row.getCell(1).getStringCellValue());
				System.out.println("I am here 1 \t" + row.getCell(1));

				user.setCustomeraddress(row.getCell(2).getStringCellValue());
				System.out.println("I am here 2\t" + row.getCell(2));

				user.setCustomerpackagename(row.getCell(3).getStringCellValue());
				System.out.println("I am here 3 \t" + row.getCell(3));

				user.setCustomermobileno(row.getCell(4).getStringCellValue());
				System.out.println("I am here 4\t" + row.getCell(4));

				user.setCustomeremailid(row.getCell(5).getStringCellValue());
				System.out.println("I am here 5\t" + row.getCell(5));

				user.setCustomeramountofrecharge((float) row.getCell(6).getNumericCellValue());
				lstUser.add(user);
			}
			model.addAttribute("user", id);
			model.addAttribute("lstUser", lstUser);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "TopUp";
	}

	@ResponseBody
	@RequestMapping(value = "/findvcno", method = RequestMethod.GET)
	public String findVcNumber(@RequestParam("user") String user, Model model, @RequestParam("vcno") String vcno) {
		System.out.println("\n**************** Find Value **********************\t" + vcno);
		User tmp1 = userService.findByVCNO(vcno);

		Gson gson = new Gson();
		String json = gson.toJson(tmp1);
		model.addAttribute("user", user);
		return json;
		// return new ModelAndView(json);
	}

	@ResponseBody
	@RequestMapping(value = "/findvcnoByMob", method = RequestMethod.GET)
	public String findvcnoByMob(@RequestParam("user") String user, Model model, @RequestParam("mobile") String vcno) {
		System.out.println("\n**************** Find Value **********************\t" + vcno);
		User tmp1 = userService.findByMobile(vcno);

		Gson gson = new Gson();
		String json = gson.toJson(tmp1);
		model.addAttribute("user", user);
		return json;
		// return new ModelAndView(json);
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	/////////////////////////////////////// Search for All Complaints By
	/////////////////////////////////////// LCO///////////////////////////////

	@RequestMapping(value = "/searchComplaint", method = RequestMethod.GET)
	public ModelAndView searchComplaint(ModelMap map, @RequestParam("user") String user,
			@RequestParam("VC_No") String VC_No, @RequestParam("fdate") String fdate,
			@RequestParam("edate") String edate, @RequestParam("mobile") String mobile,
			@RequestParam("status") String status, Integer offset, Integer maxResults) {
		map.addAttribute("user", user);
		System.out.println("VC no: " + VC_No + "user: " + user);
		List<AllComplaints> tmp = LCOComplaintRepository.listForSearch(fdate, edate, VC_No, mobile, status, offset,
				maxResults);

		System.out.println("tmp.size()***************: " + tmp.size());
		if (tmp.size() < 1) {
			map.addAttribute("error", "No Data Found!!!");
			System.out.println("No Data Found........................");
		} else {
			map.addAttribute("userList", tmp);
			map.addAttribute("count", LCOComplaintRepository.countForSearch(fdate, edate, VC_No, mobile, status));
			map.addAttribute("offset", offset);
		}

		return new ModelAndView("Dashboard", map);
	}

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	////////////////////////////////////////////////////////// show Customer
	////////////////////////////////////////////////////////// Information//////////////////////
	@ResponseBody
	@RequestMapping(value = "/showCustInfo", method = RequestMethod.GET)
	public String showCustInfo(@RequestParam("user") String user, @RequestParam("id") String invoiceid,
			ModelMap model) {
		System.out.println("Invoice Details check data: " + invoiceid + "," + user);
		User result = userService.get(invoiceid);
		System.out.println("Result: " + result.getCustomer_mobile());
		Gson gson = new Gson();
		String json = gson.toJson(result);
		model.addAttribute("user", user);
		return json;
		// return new ModelAndView(json);
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////

	@RequestMapping(value = "/searchLMByLCO", method = RequestMethod.GET)
	public String searchLCOUserByLCO(@RequestParam("user") String user, Model model, Integer offset, Integer maxResults,
			@RequestParam("empid") String emp, @RequestParam("username") String id, @RequestParam("desig") String desig,
			@RequestParam("mobile") String mobile) {
		LMUser userForm = new LMUser();
		model.addAttribute("userForm", userForm);
		ArrayList<String> departments = new ArrayList<String>();
		departments.add("Select Repsonsibility");
		departments.add("Collection");
		departments.add("Local Fault Repair");
		departments.add("Others");
		model.addAttribute("resp", departments);
		List<LMUser> tmp = lmuserservice.userListForSearch(emp, id, desig, mobile, offset, maxResults);
		if (tmp.size() > 0) {
			System.out.println("Data Found size:........................" + tmp.size());
			model.addAttribute("count", lmuserservice.countForSearch(emp, id, desig, mobile));
			model.addAttribute("offset", offset);
		} else {
			model.addAttribute("error", "No Data Found!!!");
			System.out.println("No Data Found........................");
		}
		model.addAttribute("userList", tmp);
		model.addAttribute("user", user);
		return "NewUser";
	}

	////////////////////////////////// Date and Password Generation
	////////////////////////////////// functions///////////////////////////////////

	String getSaltString() {
		String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		StringBuilder salt = new StringBuilder();
		Random rnd = new Random();
		while (salt.length() < 10) {
			int index = (int) (rnd.nextFloat() * SALTCHARS.length());
			salt.append(SALTCHARS.charAt(index));
		}
		String saltStr = salt.toString();
		return saltStr;

	}

	public String getDate() {
		String trnstamp = null;
		try {
			SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date now = new Date();
			String strDate = sdfDate.format(now);
			// System.out.println(strDate.toString());
			trnstamp = strDate.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return trnstamp;
	}

	private void createBill(String user, String id) {
		
		float previousAmt=0;
		float lastPaid=0;
		Double advance;
		String fromBill=null;
		String toBill=null;

		User tmp = userService.get(id);
		LCO_Setting setting=settingService.getByID(user);
		Customer_Invoice1 lastData=invoice1.getLastPaymentDetail(id);
		if(lastData!=null){
			 previousAmt=Float.parseFloat(lastData.getTotal_Amount());
			 lastPaid=Float.parseFloat(lastData.getLastPaid_Amt());
			 fromBill=lastData.getBilling_Date();
			Double sa= invoice1.getSumOfPaidAmt(id);
			Double la=invoice1.getTotalPaidAmt(id);
			advance= la-sa;
			
		}else{
			 previousAmt=0;
			 lastPaid=0;
			 fromBill=tmp.getTimestamp();
			 advance= 0.0;
			
		}
		String invoiceId = "IN" + tmp.getUsername() + "_" + System.currentTimeMillis();
		
		
		int cost = Integer.parseInt(tmp.getPackage_amount());
		int costPerDay = cost / 30;
		
		long interval = dayCalculate(fromBill, getDate());
		
		System.out.println("Interval: "+interval);
		float primaryAmt = costPerDay * interval;
		
		 System.out.println("primaryAmt: "+primaryAmt+"costPerDay: "+costPerDay);
		float serviceTax = (primaryAmt * Float.parseFloat(setting.getService_tax())) / 100;
		float entTax = (primaryAmt * Float.parseFloat(setting.getEnt_tax())) / 100;
		float otherTax = (primaryAmt * Float.parseFloat(setting.getOther_tax())) / 100;
		float ltfee = Float.parseFloat(setting.getLateFeeCharges());

		float totalAmt = primaryAmt + serviceTax + entTax  + otherTax;
		// System.out.println("Total Amout: "+totalAmt);
		float totalAmtafdue = primaryAmt + serviceTax + entTax + otherTax + ltfee;
		// System.out.println("Total Amout after Due Date: "+totalAmtafdue);
		Double advance_Amt = totalAmt+advance;
		Customer_Invoice1 custIn = new Customer_Invoice1();
		custIn.setInvoice_No(invoiceId);
		custIn.setUser_Id(id);
		custIn.setUser_Name(tmp.getCustomer_name());
		custIn.setVc_No(tmp.getCustomer_vc_no());
		custIn.setBilling_Date(getDate());
		custIn.setDueDate(fromBill);
		custIn.setPackage_Name(tmp.getPackage_name());
		custIn.setPackage_Cost(primaryAmt+"");
		custIn.setService_Tax(serviceTax+"");
		custIn.setEntertain_Tax(entTax+"");
		custIn.setPrevoius_Bal(previousAmt+"");
		custIn.setAdvance_Amt(advance+"");
		custIn.setLastPaid_Amt(lastPaid+"");
		custIn.setTotal_Amount(advance_Amt+"");
		custIn.setTotalAmt_AftDueDate(totalAmtafdue+"");
		custIn.setLatePay_Charges(setting.getLateFeeCharges());
		custIn.setDiscount(setting.getDiscount());
		custIn.setPaid_Amt("NA");
		custIn.setAgent_Id("NA");
		custIn.setDate_of_paid("NA");
		custIn.setBill_status("Not Paid");
		custIn.setTrndate(getDate());
		custIn.setLco_id(user);
		
		
		invoice1.save(custIn);
		userService.updateBillStatus(id);

	}

	public long dayCalculate(String fdate, String edate) {
		long diff = 0;
		// System.out.println("Dates: "+fdate+","+edate);
		try {
			SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date1 = myFormat.parse(fdate);
			Date date2 = myFormat.parse(edate);
			diff = date2.getTime() - date1.getTime();
			diff = TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
			// System.out.println("interval: "+diff);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return diff;

	}
}
