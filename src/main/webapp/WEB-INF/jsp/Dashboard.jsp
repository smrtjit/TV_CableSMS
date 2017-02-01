<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
</style>
<title></title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="description"
	content="Pushy is an off-canvas navigation menu for your website." />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/normalize.css" />
<link rel="stylesheet" href="assets/css/demo.css" />
<link rel="stylesheet" href="assets/cssstyle.css">
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- Pushy CSS -->
<link rel="stylesheet" href="assets/css/pushy.css" />

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>


<!-- start model////////////////////////////////////////////////////////////////////////// -->
<link href='http://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet' type='text/css'>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.css"
	rel="stylesheet" type="text/css">
<style>
select {
	/*    margin: 50px; */
	margin-bottom: 10px;
	border: 1px solid #111;
	background: transparent;
	width: 150px;
	padding: 5px 25px 5px 5px;
	font-size: 13px;
	border: 1px solid #ccc;
	height: 30px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background: url(http://www.stackoverflow.com/favicon.ico) 96%/15%
		no-repeat #eee;
	border: 1px solid #111;
}
/*target Internet Explorer 9 and Internet Explorer 10:*/
@media screen and (min-width:0\0) {
	select {
		background: none;
		padding: 5px;
	}
}

.btn1 {
	background-color: #2a6496;
	border: none;
	color: white;
	padding: 10px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 12px;
	border: none;
}

.nofound{
color: red;
font-size: 3ex;
margin-left: 350px;
widows: 100%;


}

/* ////////////////////////////////////////////////////////////////////////////////////// */
html {
	font-family: "roboto", helvetica;
	position: relative;
	height: 100%;
	font-size: 100%;
	line-height: 1.5;
	color: #444;
}

h2 {
	margin: 1.75em 0 0;
	font-size: 5vw;
}

h3 {
	font-size: 1.3em;
}

.v-center {
	height: 100vh;
	width: 100%;
	display: table;
	position: relative;
	text-align: center;
}

.v-center>div {
	display: table-cell;
	vertical-align: middle;
	position: relative;
	top: -10%;
}

.btn {
	font-size: 2.5vmin;
	padding: 0.15em .75em;
	/*   background-color: #fff; */
	border: 1px solid #bbb;
	/*   color: #333; */
	text-decoration: none;
	display: inline;
	/*   border-radius: 4px; */
	-webkit-transition: background-color 1s ease;
	-moz-transition: background-color 1s ease;
	transition: background-color 1s ease;
}

.btn
:hover {
	background-color: #ddd;
	-webkit-transition: background-color 1s ease;
	-moz-transition: background-color 1s ease;
	transition: background-color 1s ease;
}

.btn-small {
	padding: .75em 1em;
	font-size: 0.8em;
}

.modal-box {
	display: none;
	position: absolute;
	z-index: 1000;
	width: 98%;
	background: white;
	border-bottom: 1px solid #aaa;
	border-radius: 4px;
	box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
	border: 1px solid rgba(0, 0, 0, 0.1);
	background-clip: padding-box;
}

@media ( min-width : 32em) {
	.modal-box {
		width: 70%;
	}
}

html {
	font-family: "roboto", helvetica;
	position: relative;
	height: 100%;
	font-size: 100%;
	line-height: 1.5;
	color: #444;
}

h2 {
	margin: 1.75em 0 0;
	font-size: 5vw;
}

h3 {
	font-size: 1.3em;
}

.v-center {
	height: 100vh;
	width: 100%;
	display: table;
	position: relative;
	text-align: center;
}

.v-center>div {
	display: table-cell;
	vertical-align: middle;
	position: relative;
	top: -10%;
}

.btn {
	font-size: 2.5vmin;
	padding: 0.15em .75em;
	/*   background-color: #fff; */
	border: 1px solid #bbb;
	/*   color: #333; */
	text-decoration: none;
	display: inline;
	/*   border-radius: 4px; */
	-webkit-transition: background-color 1s ease;
	-moz-transition: background-color 1s ease;
	transition: background-color 1s ease;
}

.btn:hover {
	background-color: #ddd;
	-webkit-transition: background-color 1s ease;
	-moz-transition: background-color 1s ease;
	transition: background-color 1s ease;
}

.btn-small {
	padding: .75em 1em;
	font-size: 0.8em;
}

.modal-box {
	display: none;
	position: absolute;
	z-index: 1000;
	width: 98%;
	background: white;
	border-bottom: 1px solid #aaa;
	border-radius: 4px;
	box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
	border: 1px solid rgba(0, 0, 0, 0.1);
	background-clip: padding-box;
}

@media ( min-width : 32em) {
	.modal-box {
		width: 70%;
	}
}

.modal-box header, .modal-box .modal-header {
	padding: 1.25em 1.5em;
	border-bottom: 1px solid #ddd;
}

.modal-box header h3, .modal-box header h4, .modal-box .modal-header h3,
	.modal-box .modal-header h4 {
	margin: 0;
}

.modal-box .modal-body {
	padding: 2em 1.5em;
}

.modal-box footer, .modal-box .modal-footer {
	padding: 1em;
	border-top: 1px solid #ddd;
	background: rgba(0, 0, 0, 0.02);
	text-align: right;
}

.modal-overlay {
	opacity: 0;
	filter: alpha(opacity = 0);
	position: absolute;
	top: 0;
	left: 0;
	z-index: 900;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.3) !important;
}

a.close {
	line-height: 1;
	font-size: 1.5em;
	position: absolute;
	top: 5%;
	right: 2%;
	text-decoration: none;
	color: #bbb;
}

a.close:hover {
	color: #222;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	transition: color 1s ease;
}
</style>

<!-- end model////////////////////////////////////////////////////////////////////////// -->

<style type="text/css">
hr {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #d3071c;
}

table#ContentPlaceHolder1_gvdash {
	background-color: #d5f7ce;
}

table td {
	width: 400px;
}


.btndashborad {
    margin: -68px 450px;
    display: inline-block;
    padding: 6px 200px;
    margin-bottom: 0;
    font-size: 17px;
    font-weight: normal;
    line-height: 1.428571429;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    border: 1px solid transparent;
    border-radius: 98px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    -o-user-select: none;
    user-select: none;
}
</style>

</head>
<body
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
	<%
		if (session.getAttribute("lcoLogin") == null) {
			System.out.print("session not found");
			response.sendRedirect("lcologin.html?error=Session is Expired!!!");
		} else {
			System.out.print("session found");
	%>



	<div>
		<header class="site-header push"> <marquee>Welcome
			to Payspot</marquee> </header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
		<ul>
			<!--menu iteam code -->
			<li class="pushy-link"><a href="LCOHome.html?user=${user}"
				style="background: OLDLACE; color: black"><h5>${user}</h5> </font></a></li>
			<li class="pushy-link"><a
				href="allLCOCollection.html?user=${user}">Collection</a></li>
			<li class="pushy-link"><a
				href="allLCOComplain.html?user=${user} ">Complaint</a></li>
			<li class="pushy-link"><a
				href="oldConnections.html?user=${user}">Connection</a></li>
			<li class="pushy-link"><a
				href="OldUserInfo.html?user=<%=request.getParameter("user")%>">Create
					User</a></li>
			<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
			<li class="pushy-link"><a href="lcoTopUp.html?user=${user}">Top-UP</a></li>
			<li class="pushy-link"><a href="lcoBilling.html?user=${user}">Bulk-Billing</a></li>
			<li class="pushy-link"><a
				href="lcoaccountMgmt.html?user=${user}">Account Management</a></li>

			<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
			<li class="pushy-link"><a href="lcostock.html?user=${user}">Stock</a></li>
			<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
			<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
			<li class="pushy-link"><a href="LCODetail.html?user=${user}">My
					Account</a></li>
			<li class="pushy-link"><a href="logout.html">Log Out</a></li>
		</ul>
		</nav>

		<!-- Site Overlay -->
		<div class="site-overlay"></div>

		<!-- Your Content -->
		<div id="container">
			<!-- Menu Button -->
			<div class="menu-btn">&#9776; Menu</div>
			<button type="button" class="btndashborad btn-pink ">Complaint
			</button>

			<!-- rownd circle code Connection DashBoard || Register_Complaint -->
			<div class="row">
				<div class=" col-md-4 col-xm-4 col-md-offset-4">
					<table id="ContentPlaceHolder1_rbselect" class="form-control">
						<tr>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_0" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="0"
									checked="checked /><label
									for="ContentPlaceHolder1_rbselect_0" ">Complaint-Dashboard</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
									for="ContentPlaceHolder1_rbselect_1">Register-Complaint</label></span></td>
						</tr>
					</table>
				</div>
			</div>

			<hr />

			<div id="dash">
				<div id="ContentPlaceHolder1_upd1">
					<div class="row">
						<form action="searchComplaint.html">
						<input type="hidden" name="user" value="${user}"  />
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="fdate" type="text"
									id="fdate" tabindex="1"
									class="form-control" placeholder="From Date" />
							</div>

						</div>

						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input name="edate" type="text"
									id="edate"  tabindex="2"
									class="form-control" placeholder="To Date" />

							</div>
						</div>

						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input name="VC_No" type="text"
									 tabindex="2"
									class="form-control" placeholder="VC No." />
							</div>
						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="mobile" type="text"
									 tabindex="1"
									class="form-control" placeholder="Mobile No." />

							</div>

						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="status" type="text"
									 tabindex="2"
									class="form-control" placeholder="Status" />
							</div>

						</div>

						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input type="submit"
									name="submit"
									value="Search" id="ContentPlaceHolder1_btn_search_request"
									tabindex="30" class="btn-primary btn btn-block" />

							</div>

						</div>
						<div class="nofound">  ${error} </div>
						</form>
						<div style="margin-bottom: 0px">
							<p>
								<b>Total Count</b> : <span id="ContentPlaceHolder1_lblcount"
									style="font-weight: bold;">${count}</span>
							</p>
						</div>
						<div class="col-sm-12">






							<div>
								<table
									class="table table-striped table-bordered table-hover fontsize"
									cellspacing="0" rules="all" border="1"
									id="ContentPlaceHolder1_gvdash"
									style="width: 100%; border-collapse: collapse;">
									<tr>
										<th width="5%" scope="col">SN</th>
										<th scope="col">Complaint ID</th>
										<th scope="col">VC NO</th>
										<th scope="col">Customer Name</th>
										<th scope="col">Address</th>
										<th scope="col">Mobile</th>
										<th scope="col">Complaint Type</th>
										<th scope="col">Current Status</th>
										<!-- 										<th scope="col">Customer Remark</th> -->
										<!-- 										<th scope="col">Closing Remark</th> -->
									</tr>
										<c:forEach items="${userList}" var="user" varStatus="itr">
										<tr>
											<td>${offset + itr.index +1 }</td>
											<td><a href="#" value="${user.complaint_no}#${user.customer_vcno}#${user.customer_name}#${user.customer_mobile}#${user.cust_remark}"
												data-modal-id="popup2">${user.complaint_no}</a></td>
											<td>${user.customer_vcno}</td>
											<td>${user.customer_name}</td>
											<td>${user.customer_add}</td>
											<td>${user.customer_mobile}</td>
											<td>${user.complaint_type}</td>
											<td>${user.complaint_status}</td>
											<%-- 											<td>${user.cust_remark}</td> --%>
											<%-- 											<td>${user.closing_remark}</td> --%>
											
										</tr>
									</c:forEach>

								</table>
								
								<%
							String finalQuery="";
							String []token= request.getQueryString().split("&");
							for(int i=0;i<token.length;i++){
								if(token[i].startsWith("offset")){
									System.out.println("offset Find");
								}else
								finalQuery=finalQuery+token[i]+"&";
							}
							String main=request.getAttribute("javax.servlet.forward.request_uri").toString()+ "?"+finalQuery.substring(0, finalQuery.length()-1);
							System.out.println("Query Link in jsp: "+main);
							%>
							<tag:paginate max="15" offset="${offset}" count="${count}" uri="<%= main%>" next="&raquo;" previous="&laquo;" />
							</div>

						</div>

					</div>



				</div>

			</div>

			<div id="comp" style="height: 300px; display: none">


				<div class="row">

					<div class="col-sm-3">
						<div style="margin-bottom: 40px">
							<input name="ctl00$ContentPlaceHolder1$txtvcno2" type="text"
								onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtvcno2\&#39;,\&#39;\&#39;)&#39;, 0)"
								onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
								id="ContentPlaceHolder1_txtvcno2" tabindex="1"
								class="form-control" placeholder="VC Number" />

						</div>

					</div>
					<div class="col-sm-1"  style="padding-left:50px"> 
 						<div >
 							<p style="margin-left: px"><h5>OR</h5></p>

 						</div> 

 					</div> 
					<div class="col-sm-3">
						<div style="margin-bottom: 40px">

							<input name="ctl00$ContentPlaceHolder1$txtmobileno" type="text"
								onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtmobileno\&#39;,\&#39;\&#39;)&#39;, 0)"
								onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
								id="ContentPlaceHolder1_txtmobileno" tabindex="2"
								class="form-control" placeholder="Mobile Number" />

						</div>
					</div>

					<div class="col-sm-3">
						<div style="margin-bottom: 40px">
							<select name="ctl00$ContentPlaceHolder1$ddlcomplaint"
								id="ContentPlaceHolder1_ddlcomplaint" tabindex="11"
								class="form-control" placeholder="Responsibility">
								<option value="Select">Complaint Type</option>
								<option value="No Signal">No Signal</option>
								<option value="Not Working">Not Working</option>
								<option value="STB Problem">STB Problem</option>
								<option value="Bad Singnal">Bad Singnal</option>
								<option value="Channel Not Available">Channel Not
									Available</option>

							</select>

						</div>
					</div>

					<div class="col-sm-10" >
						<textarea name="ctl00$ContentPlaceHolder1$txtrmark" rows="3"
							cols="100" id="ContentPlaceHolder1_txtrmark" class="form-control"
							placeholder="Add Remark" style="overflow:auto;resize:none;">
					</textarea>

					</div><br>
					<div class="col-sm-2" style="padding-left:20px">
						<div style="margin-bottom: 10px">
								<br>	<br>
							<input type="submit" name="ctl00$ContentPlaceHolder1$btn_addUser"
								value="Lock Complaint" id="ContentPlaceHolder1_btn_addUser"
								tabindex="12" class="btn-primary btn btn-block" />

						</div>
					</div>
				</div>

				<hr />

				<div class="container">
					<div class="row">

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">
								<input name="ctl00$ContentPlaceHolder1$txtcustname" type="text"
									id="ContentPlaceHolder1_txtcustname" disabled="disabled"
									tabindex="2" class="aspNetDisabled form-control"
									placeholder="Customer Name" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">
								<input name="ctl00$ContentPlaceHolder1$txtcustadd" type="text"
									id="ContentPlaceHolder1_txtcustadd" disabled="disabled"
									tabindex="2" class="aspNetDisabled form-control"
									placeholder="Customer Address" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustmobilenumber"
									type="text" id="ContentPlaceHolder1_txtcustmobilenumber"
									disabled="disabled" tabindex="3"
									class="aspNetDisabled form-control"
									placeholder="Customer Mobile No." />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustEmailid"
									type="text" id="ContentPlaceHolder1_txtcustEmailid"
									disabled="disabled" tabindex="3"
									class="aspNetDisabled form-control"
									placeholder="Customer Email-ID" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustvcno" type="text"
									id="ContentPlaceHolder1_txtcustvcno" disabled="disabled"
									tabindex="3" class="aspNetDisabled form-control"
									placeholder="Customer VC No." />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustsbtno" type="text"
									id="ContentPlaceHolder1_txtcustsbtno" disabled="disabled"
									tabindex="3" class="aspNetDisabled form-control"
									placeholder="Customer STB No," />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustwarantydate"
									type="text" id="ContentPlaceHolder1_txtcustwarantydate"
									disabled="disabled" tabindex="3"
									class="aspNetDisabled form-control"
									placeholder="VC Warranty Date" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustconnection"
									type="text" id="ContentPlaceHolder1_txtcustconnection"
									disabled="disabled" tabindex="3"
									class="aspNetDisabled form-control"
									placeholder="Connection Status" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustpackege"
									type="text" id="ContentPlaceHolder1_txtcustpackege"
									disabled="disabled" tabindex="3"
									class="aspNetDisabled form-control" placeholder="Package Name" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustbal" type="text"
									id="ContentPlaceHolder1_txtcustbal" disabled="disabled"
									tabindex="3" class="aspNetDisabled form-control"
									placeholder="Account Balance" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtcustlastpay"
									type="text" id="ContentPlaceHolder1_txtcustlastpay"
									disabled="disabled" tabindex="3"
									class="aspNetDisabled form-control" placeholder="Last Payment" />

							</div>
						</div>

						<div class="col-sm-6">
							<div style="margin-bottom: 20px">

								<input name="ctl00$ContentPlaceHolder1$txtlastrechargedate"
									type="text" id="ContentPlaceHolder1_txtlastrechargedate"
									disabled="disabled" tabindex="3"
									class="aspNetDisabled form-control"
									placeholder="Last Recharge Date" />

							</div>
						</div>
						<div class="col-sm-6"></div>




						<div class="col-sm-12" style="height: 1px"></div>

					</div>
				</div>

			</div>


			<div class="modal fade bd-example-modal-lg" tabindex="-1"
				id="modalDetails" role="dialog" aria-labelledby="myLargeModalLabel"
				aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<!-- Modal content-->
					<div class="modal-content">

						<div class="modal-header" style="background-color: #f8c300">
							<button type="button" class="close" data-dismiss="modal"></button>
							<h4 class="modal-title">Details</h4>
						</div>
						<div class="modal-body">

							<div id="ContentPlaceHolder1_msgbox">

								<div id="ContentPlaceHolder1_pnlPrint">

									<div id="print_ticket">
										<div class="col-sm-1"></div>
										<div class="col-sm-10"></div>

									</div>

								</div>


							</div>
						</div>
						<div class="modal-footer">
							<button type="button" id="btnprint" class="btn btn-primary"
								onclick="return PrintPanel();">Print</button>
							<a id="ContentPlaceHolder1_Lnktclose" class="btn btn-default"
								href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$Lnktclose&#39;,&#39;&#39;)">Close</a>

						</div>

					</div>

				</div>

			</div>

			<div class="modal fade" id="modalEdit" role="dialog">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">


						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Edit</h4>
						</div>
						<div class="modal-body">
							<div class="container">
								<div class="row">

									<div class="col-sm-10" style="margin-bottom: 10px">
										<div class="row">
											<div id="ContentPlaceHolder1_UpdatePanel1">


												<div class="row" style="margin-bottom: 15px">
													<div class="col-sm-3">
														<p class="p1">Complaint Type:</p>
													</div>
													<div class="col-sm-9">
														<input name="ctl00$ContentPlaceHolder1$txteditcom"
															type="text" readonly="readonly"
															id="ContentPlaceHolder1_txteditcom" class="form-control" />
													</div>
												</div>
												<div class="row" style="margin-bottom: 15px">
													<div class="col-sm-3">
														<p class="p1">Select Status:</p>
													</div>
													<div class="col-sm-9">
														<select name="ctl00$ContentPlaceHolder1$ddlstatus"
															id="ContentPlaceHolder1_ddlstatus" class="form-control">
															<option value="Select">Select</option>
															<option value="OPEN">OPEN</option>
															<option value="HOLD">HOLD</option>
															<option value="CLOSE">CLOSE</option>
															<option value="RESOLVED">RESOLVED</option>

														</select>
													</div>
												</div>
												<div class="row" style="margin-bottom: 15px">
													<div class="col-sm-3">
														<p class="p1">Action Date :</p>
													</div>
													<div class="col-sm-9">
														<input name="ctl00$ContentPlaceHolder1$txtactiondate"
															type="text" id="ContentPlaceHolder1_txtactiondate"
															class="form-control" placeholder="YYYY-MM-DD" />
													</div>
												</div>
												<div class="row" style="margin-bottom: 15px">
													<div class="col-sm-3">
														<p class="p1">Closing_Remark:</p>
													</div>
													<div class="col-sm-9">
														<textarea
															name="ctl00$ContentPlaceHolder1$txtclosingremark"
															rows="2" cols="20"
															id="ContentPlaceHolder1_txtclosingremark"
															class="form-control" placeholder="Remarks......">
													</textarea>
													</div>
												</div>


											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<input type="submit" name="ctl00$ContentPlaceHolder1$btnok"
									value="Submit" id="ContentPlaceHolder1_btnok"
									class="btn btn-warning" /> <a
									id="ContentPlaceHolder1_lnkCloseEdit" class="btn btn-default"
									href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnkCloseEdit&#39;,&#39;&#39;)">Close</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<link
				href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css"
				rel="stylesheet" type="text/css" />
			<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
			<script src="assets/js/jquery-1.10.2.js"></script>
			<script src="assets/js/bootstrap.js"></script>
			<script src="assets/js/bootstrap.min.js"></script>
			<script src="assets/js/pushy.js"></script>

			<script type="text/javascript">

        $(document).ready(function () {
            debugger;
            $('#ContentPlaceHolder1_rbselect').click(function () {

                var chk = $('#ContentPlaceHolder1_rbselect').find(":checked").val()

                if (chk == 0) {
                    $('#dash').show();
                    $('#comp').hide();
                    $('#counter').hide();
                }
                if (chk == 1) {
                    $('#comp').show();
                    $('#dash').hide();
                    $('#counter').hide();

                }
            });

            $('#fdate').datepicker({ dateFormat: 'yy-mm-dd' });
            $('#edate').datepicker({ dateFormat: 'yy-mm-dd' });
            $('#ContentPlaceHolder1_txtactiondate').datepicker({ dateFormat: 'yy-mm-dd' });


        });


        function radioList() {
            debugger;
            var chk = $('#ContentPlaceHolder1_rbselect').find(":checked").val()
            if (chk == 0) {
                $('#dash').show();
                $('#comp').hide();
                $('#counter').hide();
            }
            if (chk == 1) {
                $('#comp').show();
                $('#dash').hide();
                $('#counter').hide();


            }

        }


        function PrintPanel() {
            var panel = document.getElementById("ContentPlaceHolder1_pnlPrint");
            var printWindow = window.open('', '', 'height=400,width=850');
            printWindow.document.write('<html><head><title>Pratikshat Solution</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
			<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
			<script>
				$(function(){

					var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

						$('a[data-modal-id]').click(function(e) {
							var url = $(this).attr('value');
// 							document.getElementById("demo").innerHTML ="Complaint Number: "+url;
							 
							 var fields = url.split('#');
							 var id = 'Complaint Id: '+ fields[0];;
								
							 var customer_vcno = fields[1];
							 var  customer_name= fields[2];
							 var  customer_mobile= fields[3];
							 var  cust_remark= fields[4];
						
							
							document.getElementById('id1').innerHTML=id;
							document.getElementById('vcno').value=customer_vcno;
							document.getElementById('customername').value=customer_name;
							document.getElementById('mobile').value=customer_mobile;
							document.getElementById('rem').defaultValue  =cust_remark;
							
						
													
							//alert(url);
						e.preventDefault();
  						  $("body").append(appendthis);
   						 $(".modal-overlay").fadeTo(500, 0.7);
   						 //$(".js-modalbox").fadeIn(500);
						var modalBox = $(this).attr('data-modal-id');
						$('#'+modalBox).fadeIn($(this).data());
						});  
  
  
						$(".js-modal-close, .modal-overlay").click(function() {
  						  $(".modal-box, .modal-overlay").fadeOut(500, function() {
    				    $(".modal-overlay").remove();
   				 });
 
				});
 
					$(window).resize(function() {
  					  $(".modal-box").css({
   					     top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
   				     left: ($(window).width() - $(".modal-box").outerWidth()) / 2
   					 });
							});
 
				$(window).resize();
 
				});
				</script>

		</div>


		<div id="popup2" class="modal-box">
			<header> <a href="#" class="js-modal-close close">×</a>
			<h3 id="id1" />
			</header>
			<div class="modal-body">
				<p id="remark" />

				<div class="container">
					<form id="contact" action="#">
					
					<div class="form-inline marginBottom">
						<div class="md-form">
						<div>
							<input type='text' id='vcno'  style="width: 30%; margin-left: 0%" class="form-control" readonly /> 
							<input type='text' id='customername'  style="width: 30%; margin-left: 4.5%"class="form-control" readonly /> 
							<input type='text' id='mobile'  style="width: 30%; margin-left: 4.5%"class="form-control" readonly /> 
						</div>
							<br>
							<textarea type="text" id='rem'  name="remark" class="form-control" readonly style="overflow:auto;resize:none"></textarea>
						</div>
							<br>
						<div>
							<textarea type="text" name="message" placeholder="Message"class="form-control" style="overflow:auto;resize:none"></textarea><br> 
						</div>
							<br>
						<div>
							<select name="type"><option value="Open">Open</option>
										<option value="Pending">Pending</option>
										<option value="Close">Close</option>
							</select>
						</div>
							<br>
					 			 <input value="Submit!" type="submit" class="btn1">
					 	</div>
				  </div>
				</form>
				</div>

			</div>
			
		</div>

		<!-- Pushy JS -->

		<script src="/js/pushy.min.js"></script>
		<script src="/js/jquery-1.10.2.js"></script>
		<script src="/js/bootstrap.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<link
			href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css"
			rel="stylesheet" type="text/css" />
		<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	</div>
	</form>

	<link href="assets/css/circle.css" rel="stylesheet" />
	<%
		}
	%>
</body>
</html>
