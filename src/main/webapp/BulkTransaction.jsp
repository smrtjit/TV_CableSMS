


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="description"
	content="Pushy is an off-canvas navigation menu for your website." />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/normalize.css" />
<link rel="stylesheet" href="assets/css/demo.css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- Pushy CSS -->
<link rel="stylesheet" href="assets/css/pushy.css" />

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>




<style type="text/css">
.p1 {
	font-style: initial;
	font-weight: bold;
	font-size: 16px;
}

table#ContentPlaceHolder1_gvChangePlan {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_gvRenewal {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_gvTransaction {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_gvDiscount {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_gvCustomer {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_gvPackage {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_gvChannel {
	background-color: #d5f7ce;
}
</style>
</head>
<body
	style="background-image: url(back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
	
	<%
			if(session.getAttribute("lcoLogin")==null){
				System.out.print("session not found");
				response.sendRedirect("lcologin.html?error=Session is Expired!!!");
			}else{
				System.out.print("session found");
				%>
	<form method="post" action="#" id="form1"
		enctype="multipart/form-data">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="pf5wvbW5YR40h9cfDujXCYF7e/rFp3y4Yd35dPRpfNGirkvZYuZIEBh7VtmgsK5A7koiQPo/6P/Rqjx6jdx4dYkj7uOtnTHLoNFV4cJLk/4z0wIy/yXCyQ/fmhaqAsVKcctx/A1ojkNirfGZEpxdPgs0NKBDzyN1PRpVLq30L62KSfqsJjkAAs9ou4fEbrX8ouTjeHj3hfxEDRuCp1Gj2ZmsInMOO7PABXmdp/RQOiQgGUDPnxIkA33BqA/e66eEQ4umUuRQ8bgj//e7+dJ1DL/T/QUAgGgPAoe/ql/tgRxePsnApGSFqJQkh30vNbDdGifXD4dH/dnhPRYTaj+OERP31RWGQsdf/kk6yHZ0CzGmZOrkxvfKER91UscHSLH//iMrKDA37P1IZ/s/uGupgcj12R52VbWLECV6EAuLYwb+jziyqDhIb+ifRXIf/QIHn9dSDT12sYDLt2+yY/aIFaDFlxcDPCvmArtkf+FOy7qLIKfnWuMrBCuhNIDZoLEyuwXBlQVRn+HhtqXEUv+wldLm5JqZ/peOPGm7A42iC1Tl7k2wiI71D0V0+aEcSy4omvsd2HcWJE9iSCDo2R/yL8BJLdzZjJ7xyjJNgpi+EnWWTOSdeYjVGx2ZhJ5rbLzw1EDr845XwGlip2oD4vrn4nVRjZjGXWE1W1rHS6HtSTStEDzIoOItFpiOPseLKx+YhVoQizCUNSOTkWGZ+/jbeyJusoljB6PC+2e6aWhzhCfRJQWcl9V1lxKHCRoO3bbh" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="65421C3A" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="XGWCKtsJw8GLiLvEVwPuYjFoUT94zMfuXh+1BF1k91717mUhRSSZaG/a/dKliRmekMQjBavUODV+0Ln+c1h0HptWiOgaCJ8bvpZzMf8Ku6nLH2iypj+y4q26mm87Y+Ks4oNayr0HBlBZ8VNb+nlPzI1xSFGCOESpQXL2+Lq0o+x1HXXzG+27e3Xa0o8bmjAvo6StCf28EA+6wse6N/zzZBK2CBxBwDhDKZGWzqd11LLF3H/VRfdv8jCoWBiz1TFXKvCF4HhUFrQFUUqd+6hRc32qVhGVqUh2BjsiHKMfcoETc86VEvJrIYpiauWw4V2jbBFfXvdq/+yJRB+hc3z5/gxl99SAJK/C+z2N6eoqxFqTi591zyVMUYRWPCIQ4nc8Znc3/FpCOHdHvfiFyOnbsA2H9lRvDutxzJ5R+sM1iGnRzt5pUjDqNtWR5nPS53Wdz84XHCUY3366bZA/cN0Sb2vphpymMFocou25kLEGAbyLpGqFdO05aOrtt8E4gJiDG5RvtsLDBz2COAAO2/BS9G20bwr0Cz4SJh0fVWwysrdGq1yevPcNi1p5na/skAlr" />
		</div>
		<div>
			<header class="site-header push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>
				<li class="pushy-link" ><a href="#?user=<%= request.getParameter("user") %>" style="background:OLDLACE;color:black"><h5><%= request.getParameter("user") %></h5></font></a></li>
				<li class="pushy-link"><a href="Collection.jsp?user=<%= request.getParameter("user") %>">Collection</a></li>

				<li class="pushy-link"><a href="Dashboard.jsp?user=<%= request.getParameter("user") %>">Complaint</a></li>
				<li class="pushy-link"><a href="Connection.jsp?user=<%= request.getParameter("user") %>">Connection</a></li>
				<li class="pushy-link"><a href="NewUser.jsp?user=<%= request.getParameter("user") %>">Create User</a></li>
<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a href="TopUp.jsp?user=<%= request.getParameter("user") %>">Top-UP</a></li>
				<li class="pushy-link"><a href="BulkBilling.jsp?user=<%= request.getParameter("user") %>">Bulk-Billing</a></li>
				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li>
<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a href="MyAccount.jsp?user=<%= request.getParameter("user") %>">My Account</a></li>
				<li class="pushy-link"><a href="logout.html">Log Out</a></li>
				</ul>
			</nav>

			<!-- Site Overlay -->
			<div class="site-overlay"></div>

			<!-- Your Content -->
			<div id="container">
				<!-- Menu Button -->
				<div class="menu-btn">&#9776; Menu</div>


				<div class="row">
					<div class=" col-md-12 col-md-offset-0">
						<table id="ContentPlaceHolder1_rbselect">
							<tr>
								<td><input id="ContentPlaceHolder1_rbselect_0" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="0"
									checked="checked" /><label
									for="ContentPlaceHolder1_rbselect_0">Change Plan - Bulk</label></td>
								<td><input id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
									for="ContentPlaceHolder1_rbselect_1">Renewal - Bulk</label></td>
								<td><input id="ContentPlaceHolder1_rbselect_2" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="2" /><label
									for="ContentPlaceHolder1_rbselect_2">Transaction - Bulk</label></td>
								<td><input id="ContentPlaceHolder1_rbselect_3" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="3" /><label
									for="ContentPlaceHolder1_rbselect_3">Discount - Bulk</label></td>
								<td><input id="ContentPlaceHolder1_rbselect_4" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="4" /><label
									for="ContentPlaceHolder1_rbselect_4">Customer - Bulk</label></td>
								<td><input id="ContentPlaceHolder1_rbselect_5" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="5" /><label
									for="ContentPlaceHolder1_rbselect_5">Package - Bulk</label></td>
								<td><input id="ContentPlaceHolder1_rbselect_6" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="6" /><label
									for="ContentPlaceHolder1_rbselect_6">Channel - Bulk</label></td>
							</tr>
						</table>
					</div>
				</div>
				<hr />

				<div id="Change_Plan">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fuChangePlan"
								id="ContentPlaceHolder1_fuChangePlan" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_ChangePlan"
								value="Upload Change Plan"
								id="ContentPlaceHolder1_btn_ChangePlan" tabindex="12"
								class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_ChangePlanTemp"
								value="Template" id="ContentPlaceHolder1_btn_ChangePlanTemp"
								tabindex="12" class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">Change Plan - Bulk</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblcountChangePlan"
										style="font-weight: bold;"></span>
								</p>
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<div id="Renewal" style="display: none">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fuRenewal"
								id="ContentPlaceHolder1_fuRenewal" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit" name="ctl00$ContentPlaceHolder1$btn_Renewal"
								value="Upload Renewal" id="ContentPlaceHolder1_btn_Renewal"
								tabindex="12" class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_RenewalTemp"
								value="Template" id="ContentPlaceHolder1_btn_RenewalTemp"
								tabindex="12" class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">Renewal - Bulk</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblRenewalcount"
										style="font-weight: bold;"></span>
								</p>
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<div id="Transaction" style="display: none">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fuTransaction"
								id="ContentPlaceHolder1_fuTransaction" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_Transaction"
								value="Upload Transaction"
								id="ContentPlaceHolder1_btn_Transaction" tabindex="12"
								class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_tranTemp" value="Template"
								id="ContentPlaceHolder1_btn_tranTemp" tabindex="12"
								class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">Transaction - Bulk</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblTranCount"
										style="font-weight: bold;"></span>
								</p>
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<div id="Discount" style="display: none">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fudiscount"
								id="ContentPlaceHolder1_fudiscount" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_Discount"
								value="Upload Discount" id="ContentPlaceHolder1_btn_Discount"
								tabindex="12" class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_DiscTemp" value="Template"
								id="ContentPlaceHolder1_btn_DiscTemp" tabindex="12"
								class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">Discount - Bulk</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblCountDisc"
										style="font-weight: bold;"></span>
								</p>
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<div id="Customer" style="display: none">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fuCustomer"
								id="ContentPlaceHolder1_fuCustomer" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_customer"
								value="Upload Customer" id="ContentPlaceHolder1_btn_customer"
								tabindex="12" class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_Cust_Temp" value="Template"
								id="ContentPlaceHolder1_btn_Cust_Temp" tabindex="12"
								class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">Customer - Bulk</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblCustCount"
										style="font-weight: bold;"></span>
								</p>
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<div id="Package" style="display: none">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fuPackage"
								id="ContentPlaceHolder1_fuPackage" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit" name="ctl00$ContentPlaceHolder1$btnPackage"
								value="Upload Package" id="ContentPlaceHolder1_btnPackage"
								tabindex="12" class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btnPackageTemp" value="Template"
								id="ContentPlaceHolder1_btnPackageTemp" tabindex="12"
								class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">Package-Bulk</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblPackageCount"
										style="font-weight: bold;"></span>
								</p>
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<div id="Channel" style="display: none">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fuChannel"
								id="ContentPlaceHolder1_fuChannel" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit" name="ctl00$ContentPlaceHolder1$btnChannel"
								value="Upload Channel" id="ContentPlaceHolder1_btnChannel"
								tabindex="12" class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btnChannelTemp" value="Template"
								id="ContentPlaceHolder1_btnChannelTemp" tabindex="12"
								class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">Channel-Bulk</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblCountChannel"
										style="font-weight: bold;"></span>
								</p>
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<script type="text/javascript">
					$(document)
							.ready(
									function() {
										debugger;
										$('#ContentPlaceHolder1_rbselect')
												.click(
														function() {

															var chk = $(
																	'#ContentPlaceHolder1_rbselect')
																	.find(
																			":checked")
																	.val()

															if (chk == 0) {
																$(
																		'#Change_Plan')
																		.show();
																$('#Renewal')
																		.hide();
																$(
																		'#Transaction')
																		.hide();
																$('#Discount')
																		.hide();
																$('#Customer')
																		.hide();
																$('#Package')
																		.hide();
																$('#Channel')
																		.hide();
															}
															if (chk == 1) {

																$(
																		'#Change_Plan')
																		.hide();
																$('#Renewal')
																		.show();
																$(
																		'#Transaction')
																		.hide();
																$('#Discount')
																		.hide();
																$('#Customer')
																		.hide();
																$('#Package')
																		.hide();
																$('#Channel')
																		.hide();
															}

															if (chk == 2) {

																$(
																		'#Change_Plan')
																		.hide();
																$('#Renewal')
																		.hide();
																$(
																		'#Transaction')
																		.show();
																$('#Discount')
																		.hide();
																$('#Customer')
																		.hide();
																$('#Package')
																		.hide();
																$('#Channel')
																		.hide();
															}
															if (chk == 3) {

																$(
																		'#Change_Plan')
																		.hide();
																$('#Renewal')
																		.hide();
																$(
																		'#Transaction')
																		.hide();
																$('#Discount')
																		.show();
																$('#Customer')
																		.hide();
																$('#Package')
																		.hide();
																$('#Channel')
																		.hide();
															}
															if (chk == 4) {

																$(
																		'#Change_Plan')
																		.hide();
																$('#Renewal')
																		.hide();
																$(
																		'#Transaction')
																		.hide();
																$('#Discount')
																		.hide();
																$('#Customer')
																		.show();
																$('#Package')
																		.hide();
																$('#Channel')
																		.hide();
															}
															if (chk == 5) {

																$(
																		'#Change_Plan')
																		.hide();
																$('#Renewal')
																		.hide();
																$(
																		'#Transaction')
																		.hide();
																$('#Discount')
																		.hide();
																$('#Customer')
																		.hide();
																$('#Package')
																		.show();
																$('#Channel')
																		.hide();
															}
															if (chk == 6) {

																$(
																		'#Change_Plan')
																		.hide();
																$('#Renewal')
																		.hide();
																$(
																		'#Transaction')
																		.hide();
																$('#Discount')
																		.hide();
																$('#Customer')
																		.hide();
																$('#Package')
																		.hide();
																$('#Channel')
																		.show();
															}
														});
									});

					function radioList() {
						debugger;
						var chk = $('#ContentPlaceHolder1_rbselect').find(
								":checked").val()

						if (chk == 0) {
							$('#Change_Plan').show();
							$('#Renewal').hide();
							$('#Transaction').hide();
							$('#Discount').hide();
							$('#Customer').hide();
							$('#Package').hide();
							$('#Channel').hide();
						}
						if (chk == 1) {

							$('#Change_Plan').hide();
							$('#Renewal').show();
							$('#Transaction').hide();
							$('#Discount').hide();
							$('#Customer').hide();
							$('#Package').hide();
							$('#Channel').hide();
						}

						if (chk == 2) {

							$('#Change_Plan').hide();
							$('#Renewal').hide();
							$('#Transaction').show();
							$('#Discount').hide();
							$('#Customer').hide();
							$('#Package').hide();
							$('#Channel').hide();
						}
						if (chk == 3) {

							$('#Change_Plan').hide();
							$('#Renewal').hide();
							$('#Transaction').hide();
							$('#Discount').show();
							$('#Customer').hide();
							$('#Package').hide();
							$('#Channel').hide();
						}
						if (chk == 4) {

							$('#Change_Plan').hide();
							$('#Renewal').hide();
							$('#Transaction').hide();
							$('#Discount').hide();
							$('#Customer').show();
							$('#Package').hide();
							$('#Channel').hide();
						}
						if (chk == 5) {

							$('#Change_Plan').hide();
							$('#Renewal').hide();
							$('#Transaction').hide();
							$('#Discount').hide();
							$('#Customer').hide();
							$('#Package').show();
							$('#Channel').hide();
						}
						if (chk == 6) {

							$('#Change_Plan').hide();
							$('#Renewal').hide();
							$('#Transaction').hide();
							$('#Discount').hide();
							$('#Customer').hide();
							$('#Package').hide();
							$('#Channel').show();
						}
					}
				</script>


			</div>



			<!-- Pushy JS -->

			 <script src="assets/js/pushy.min.js"></script>
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css" rel="stylesheet" type="text/css" />
            <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		</div>
	</form>
	 <%} %>
	<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
