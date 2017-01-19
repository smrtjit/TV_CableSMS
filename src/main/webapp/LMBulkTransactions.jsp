


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
<script src="assets/js/pushy.min.js"></script>

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

	<%
		if (session.getAttribute("lmlogin") == null) {
			System.out.print("session not found");
			response.sendRedirect("lmlogin.html?error=Session is Expired!!!");
		} else {
			System.out.print("session found");
	%>
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
	<form method="post" action="./bulk_tran.aspx" id="form1"
		enctype="multipart/form-data">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="+9CKRh6skWFhHTjPts55kr61k1++uy7GoQMQ1A9XRztJTWWgt9bfMmzJ8suUQE9pHSyF6GYxNi0UeKM9bwLGw4NE91smK+NNFtjrIF1EmrDem189moAr3VEGl+UgowqP2dinrDM+oXmmPSpEsE/iC2IKeG3L7UnUiVub4fd412+qjZGmmk2hjTeVB91gBGeYDm7dTjTO3lZbs8UrkudYHuMKo9O2dNY6NXL9YfboFVSGiLOD0v9AEbNlMWgSsYGFlZL5Y2MoZ1CZuQDw4hIOK8fxdVFK7NGgdcuUSF50TUKRMLtWMib3pOjUfFk8zJ/bopTyTGOGPWFfJ136dP6JEBXt0cd/M0Raht7Rb7d9SZom/O3Pq6B/XtH0J2Th62ehxYG3kdV+GJLedDGQo6SJPQOsO/7AW88Jp+TQjtTLdlwghoFRCj/oVjM83i3jnK/dNSoictQWfzNucOX64/0uAbi+8ixwNf5IBvNP6PqRmo5x73yIZTUYntxojLYjcu8JD8kQNj4+2kQzW6OyTfYigMsoeeXIy2CuDlR4hFkikqrV8lwT0hOCsuat+qfOhz4A/P6OQjsSf4IzvGYX9B0fwTGz/gES8eUoOxHIthQERyEcZvEeJv7S1nz52OV3iRdDTWc4nHkHlovU3eR+AV2bVuBxWSZXPJfZfFvsCyH/wJ56RmRREjExeGLnEosBazn/iZfIImtz2cLtOA2rITm9rPoCT/qka+EHvD7zDrnMI9550oF/Bj+o0zrC+7St72++" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="484A4CC7" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="eZXrnFoES2Yc+U60Ur0omxeUhR15yObu0sGxPlwcvLmiHZknes54R9coUJbp1D61OPuvyAJXpAI7IZqlVYAZUX4ssRY44zPK3FblUqc1sUfh2RqKzXmmG5/iZLpk/FWQrcQ8yhMax4u0yhQq7FEpLIeLnSGRlXkn8IcN4dScKlSEnka/vtln7XZluDOg+F1JJFnCLIrv1z+GROZGoNeJA151K0cf2cYIne0Bvx5CN4LfV9ST2vz7hzUN08IK6sKkcLkRUSE3K32wkniCFdyWdWjecJC8AhQLseoc7IaU/AAFELLfu8vAxNGVwFvxcZf2u+uLWQ76W37W/Ct/KtpXqL7qeyKYb2Lgs0gjtN/M51k6rJOtdtwCvQ0LBkUK1P+yhmofEf/OnzEO/GYFWMvCDPHxOb3pPI0I6zvf1rlHSsQX9x9eaB/Nmdl2nE2A1ney/dXAGk5sv+3G1gGLXmZPkHLZ5ya3r2mrDV66mY3xcxQJjnRAOkAWQINrhgtHOIFOlPK3IIxo/KP+wJFDG5LJMA+jMAcl6nWz3rj66O6Bj/Vv5StM9TaEauyK2lkdum+A" />
		</div>
		<div>
			<header class="site-headerl push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>
					<li class="pushy-link"><a href="#"></a></li>
					<li class="pushy-link"><a href="LMDashborad.jsp">Complaint</a></li>
					<li class="pushy-link"><a href="LMConnection.jsp">Connection</a></li>
					<!--                     <li class="pushy-link"><a href="packages.aspx">Packages</a></li> -->
					<li class="pushy-link"><a href="LMTopup.jsp">Top-UP</a></li>
					<li class="pushy-link"><a href="LAcccount.jsp">Account</a></li>

					<!--                     <li class="pushy-link"><a href="LMBulkTransactions.jsp">Bulk Transactions</a></li> -->
					<!--                     <li class="pushy-link"><a href="stock.aspx">Stock</a></li> -->
					<!--                     <li class="pushy-link"><a href="report.aspx">Reports</a></li> -->
					<!--                     <li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
					<li class="pushy-link"><a href="LMMyAccount.jsp">My
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


				<div
					style="margin-left: auto; margin-right: auto; margin-top: -30px; width: 75em">
					<table id="ContentPlaceHolder1_rbselect"
						style="border-style: Double; font-size: Small;">
						<tr>
							<td><input id="ContentPlaceHolder1_rbselect_0" type="radio"
								name="ctl00$ContentPlaceHolder1$rbselect" value="0"
								checked="checked" /><label for="ContentPlaceHolder1_rbselect_0">Change
									Plan - Bulk</label></td>
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
				<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
				<script src="assets/js/jquery-1.10.2.js"></script>
				<script src="assets/js/bootstrap.js"></script>
				<script src="assets/js/bootstrap.min.js"></script>
				<script src="assets/js/pushy.js"></script>
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
	<%
		}
	%>
	<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
