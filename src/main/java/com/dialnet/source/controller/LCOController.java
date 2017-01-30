
package com.dialnet.source.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import com.dialnet.source.model.LCOUser;
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
import com.dialnet.source.service.Cust_InvoiceService;
import com.dialnet.source.service.LCOUserService;
import com.dialnet.source.service.LMUserService;
import com.dialnet.source.service.PackageInfoService;
import com.dialnet.source.service.STBStockService;
import com.dialnet.source.service.SubscriberService;
import com.dialnet.source.service.TaxInfoService;
import com.dialnet.source.service.VCStockService;

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
	map.addAttribute("user", user);
	ModelAndView modelAndView = new ModelAndView("LCOHome",map);

	return modelAndView;
	} else {
	return new ModelAndView("lcologin", "error", "Invalid Username or Password!!!");
	}
	}

	}

	@RequestMapping(value = "/allLCOCollection", method = RequestMethod.GET)
	public ModelAndView allLCOCollection(ModelMap map, @RequestParam("user") String user) {
		List<AllCollections> userList = LCOCollectionRepository.getAll();
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
	public ModelAndView CustRecharge(ModelMap map, @RequestParam("user") String user,Integer offset, Integer maxResults) {
		
		
		User userForm = new User();
		map.addAttribute("subForm", userForm);
		List<String> al = pckgservice.getAllPckgNames();
		map.addAttribute("pckInfo", al);
		List<User> userList = userService.list(offset,maxResults);
		System.out.println("calling oldConnections : "+offset+","+maxResults+","+userList.size());
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
	public ModelAndView allLCOComplain(ModelMap map, @RequestParam("user") String user) {

		List<AllComplaints> userList = LCOComplaintRepository.getAllComplaints();
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
	public ModelAndView OldUserInfo(ModelMap map, @RequestParam("user") String user) {
		System.out.println("Old User Info Called");
		LMUser userForm = new LMUser();
		map.addAttribute("userForm", userForm);
		ArrayList<String> departments = new ArrayList<String>();
		departments.add("Select Repsonsibility");
		departments.add("Collection");
		departments.add("Local Fault Repair");
		departments.add("Others");

		List<LMUser> userList = lmuserservice.getAll();
		System.out.println("Old User Info Called userList size: " + userList.size());
		for (LMUser temp : userList) {
			System.out.println("Old User Info Name: " + temp.getUsername() + ",Mobile: " + temp.getMobile());
		}
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
	public ModelAndView lcoBilling(ModelMap map, @RequestParam("user") String user,Integer offset, Integer maxResults ) {

		List<User> tmp = userService.listForBill(offset, maxResults);
		List<Cust_Invoice> custtmp=invoice.list(offset, maxResults);
		
		map.addAttribute("countForBill", userService.countForBill());
		map.addAttribute("offsetForBill", offset);
		
		
		map.addAttribute("count", invoice.count());
		map.addAttribute("offset", offset);
		map.addAttribute("BillsDetail", custtmp);
		map.addAttribute("BillUser", tmp);
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

	@RequestMapping(value = "/searchByanyOne", method = RequestMethod.GET)
	public ModelAndView searchByanyOne(ModelMap map, @RequestParam("user") String user,
			@RequestParam("VC_No") String VC_No, @RequestParam("fdate") String fdate,
			@RequestParam("edate") String edate, @RequestParam("mobile") String mobile,
			@RequestParam("pckg") String pckg) {
		map.addAttribute("user", user);
		System.out.println("VC no: " + VC_No);
		List<AllCollections> tmp = LCOCollectionRepository.getByAnyOne(fdate, edate, VC_No, mobile, pckg);
		System.out.println("tmp.size()***************: " + tmp.size());
		if (tmp.size() < 1) {
			map.addAttribute("error", "No Data Found!!!");
			System.out.println("No Data Found........................");
		} else {
			map.addAttribute("userList", tmp);
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
			@RequestParam("stb_no") String stb, @RequestParam("pckg") String pckg) {
		User userForm = new User();
		map.addAttribute("subForm", userForm);
		map.addAttribute("user", user);
		List<String> al = pckgservice.getAllPckgNames();
		map.addAttribute("pckInfo", al);
		System.out.println("status in searchLCOConByLCO: " + status);
		List<User> tmp = userService.findByAnyone(fdate, edate, stb, VC_No, mobile, status, pckg);
		System.out.println("tmp.size()***************: " + tmp.size());
		if (tmp.size() < 1) {
			map.addAttribute("error", "No Data Found!!!");
			System.out.println("No Data Found........................");
		} else {
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
	public String lcoStock(@RequestParam("user") String user, Model model,Integer offset, Integer maxResults) {

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
	
	
	@ResponseBody
	@RequestMapping(value = "/printBill", method = RequestMethod.GET)
	public ModelAndView printBill(@RequestParam("user") String user, @RequestParam("invoice") String invoiceid,
			 ModelMap model) {
		System.out.println("Invoice Details check data: " + invoiceid  + "," + user);
		Cust_Invoice result = invoice.getByInvoice(invoiceid);
		System.out.println("Result: " + result.getInvoice_No());
		model.addAttribute("user", user);
		model.addAttribute("Detail", result);
		return new ModelAndView("redirect:lcoBilling.html", model);
	}
	
	
	@RequestMapping(value="/invoice_service", method=RequestMethod.GET)
	public String custInvoice(@RequestParam("user") String user,Model model,@RequestParam("Invoice_no") String invoice_No) {	
	System.out.println("\n****************invoice_service_Statrt**********************\t"+invoice_No);
	Cust_Invoice tmp1=invoice.getByInvoice(invoice_No);
	System.out.println("************************************** \t"+tmp1.getUser_Name());
	model.addAttribute("cust_invoice",tmp1);

	return "Collection";
	}



	
	
	
	////////////////////////////////Sarbjeet code////////////////////////////////////////////

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
			}
			else{
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
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	


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

		User tmp = userService.get(id);
		String invoiceId = "IN" + tmp.getUsername() + "_" + System.currentTimeMillis();

		PackageInfo pck = pckgservice.getByID(tmp.getPackage_name());

		TaxInformation tx = taxService.getInfo(user);
		//System.out.println("Tax Amount: " + tx.getAmmusement_Tax() + "," + tx.getServiceTax());
		int cost = Integer.parseInt(pck.getPrice());
		int costPerDay = cost / 30;
		long interval = dayCalculate(tmp.getLast_recharge_date(), tmp.getCon_expiry_date());
		float primaryAmt = costPerDay * interval;
		//System.out.println("primaryAmt: "+primaryAmt+"costPerDay: "+costPerDay);
		float serviceTax = (primaryAmt * Float.parseFloat(tx.getServiceTax())) / 100;
		float entTax = (primaryAmt * Float.parseFloat(tx.getEntertainment_Tax())) / 100;
		float amsTax = (primaryAmt * Float.parseFloat(tx.getAmmusement_Tax())) / 100;
		float otherTax = (primaryAmt * Float.parseFloat(tx.getOther_Tax())) / 100;
		float vatTax = (primaryAmt * Float.parseFloat(tx.getVAT())) / 100;
		float ltfee = Float.parseFloat(tx.getLateFee());

		float totalAmt = primaryAmt + serviceTax + entTax + amsTax + otherTax;
		//System.out.println("Total Amout: "+totalAmt);
		float totalAmtafdue = primaryAmt + serviceTax + entTax + amsTax + otherTax + ltfee;
		//System.out.println("Total Amout after Due Date: "+totalAmtafdue);
		float advance_Amt = totalAmt - Integer.parseInt(tmp.getLast_payment());
		Cust_Invoice custIn = new Cust_Invoice();
		custIn.setInvoice_No(invoiceId);
		custIn.setUser_Id(tmp.getUsername());
		custIn.setBilling_Date(getDate());
		custIn.setLastDue_Date(tmp.getLast_recharge_date());
		custIn.setDueDate(getDate());
		custIn.setTotal_Amount(totalAmt + "");
		custIn.setPackage_Name(pck.getName());
		custIn.setPackage_Cost(primaryAmt + "");
		custIn.setService_Tax(serviceTax + "");
		custIn.setEntertain_Tax(entTax + "");
		custIn.setVAT(vatTax + "");
		custIn.setPrevoius_Bal(tmp.getAccount_balance());
		custIn.setAdvance_Amt(advance_Amt + "");
		custIn.setLastPaid_Amt(tmp.getLast_payment());
		custIn.setLatePay_Charges(tx.getLateFee());
		custIn.setDiascount("0");
		custIn.setInvoice_No(invoiceId);
		custIn.setTotalAmt_AftDueDate(totalAmtafdue + "");
		
		custIn.setUser_Name(tmp.getCustomer_name());
		custIn.setVc_No(tmp.getCustomer_vc_no());
		custIn.setBill_status("Not Paid");
		invoice.save(custIn);
		userService.updateBillStatus(id);

	}

	public long dayCalculate(String fdate, String edate) {
		long diff = 0;
		//System.out.println("Dates: "+fdate+","+edate);
		try {
			SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date1 = myFormat.parse(fdate);
			Date date2 = myFormat.parse(edate);
			diff = date2.getTime() - date1.getTime();
			diff=TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
			//System.out.println("interval: "+diff);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return diff;

	}
}
