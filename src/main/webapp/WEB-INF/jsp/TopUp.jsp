<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
hr {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #d3071c;
}

table#ContentPlaceHolder1_gvBulkRecharge {
	background-color: #d5f7ce;
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
				to Cable TV Show</marquee> </header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
			<ul>

				<!--menu iteam code -->
		<li class="pushy-link" ><a href="#" style="background:OLDLACE;color:black"><h5>${user}</h5></font></a></li>
				<li class="pushy-link"><a href="allLCOCollection.html?user=${user}">Collection</a></li>
				<li class="pushy-link"><a href="allLCOComplain.html?user=${user} ">Complaint</a></li>
				<li class="pushy-link"><a href="oldConnections.html?user=<%= request.getParameter("user") %>">Connection</a></li>
				<li class="pushy-link"><a href="OldUserInfo.html?user=<%= request.getParameter("user") %>">Create User</a></li>
<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a href="lcoTopUp.html?user=<%= request.getParameter("user") %>">Top-UP</a></li>
				<li class="pushy-link"><a href="lcoBilling.html?user=<%= request.getParameter("user") %>">Bulk-Billing</a></li>
<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a href="LCODetail.html?user=<%= request.getParameter("user") %>">My Account</a></li>
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
					<div class=" col-md-4 col-md-offset-4">
						<table id="ContentPlaceHolder1_rbselect" class="form-control">
							<tr>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_0" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="0"
										checked="checked" /><label
										for="ContentPlaceHolder1_rbselect_0">OneToOne_Recharge</label></span></td>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_1" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
										for="ContentPlaceHolder1_rbselect_1">Bulk Recharge</label></span></td>
							</tr>
						</table>
					</div>
				</div>
				<hr />

				<div id="oto">


					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtvcmobile" type="text"
									id="ContentPlaceHolder1_txtvcmobile" tabindex="1"
									class="form-control" placeholder="VC No" />

							</div>

						</div>


						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input type="submit" name="ctl00$ContentPlaceHolder1$btn_search"
									value="Submit" id="ContentPlaceHolder1_btn_search"
									tabindex="12" class="btn-primary btn btn-block" />

							</div>
						</div>
					</div>

					<hr />

					<div class="container">
						<div class="row">

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtid" type="text"
										id="ContentPlaceHolder1_txtid" disabled="disabled"
										tabindex="2" class="aspNetDisabled form-control"
										placeholder="CustomerID" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtname" type="text"
										id="ContentPlaceHolder1_txtname" disabled="disabled"
										tabindex="2" class="aspNetDisabled form-control"
										placeholder="Customer Name" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtadd" type="text"
										id="ContentPlaceHolder1_txtadd" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Address" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtpackage" type="text"
										id="ContentPlaceHolder1_txtpackage" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Package Name" />

								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtmobile" type="text"
										id="ContentPlaceHolder1_txtmobile" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Mobile No." />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtemail" type="text"
										id="ContentPlaceHolder1_txtemail" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Email Id" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtinstalldate"
										type="text" id="ContentPlaceHolder1_txtinstalldate"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="Connection Installation Date" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtexpirydate"
										type="text" id="ContentPlaceHolder1_txtexpirydate"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="Connection Expiry Date" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtamount" type="text"
										id="ContentPlaceHolder1_txtamount" tabindex="3"
										class="form-control" placeholder="Amount Of Recharge"
										style="border-color: Red;" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input type="submit" name="ctl00$ContentPlaceHolder1$btn_pay"
										value="Pay Now" id="ContentPlaceHolder1_btn_pay" tabindex="12"
										class="btn-primary btn btn-block" />

								</div>
							</div>








							<div class="col-sm-12" style="height: 1px"></div>

						</div>
					</div>

				</div>

				<div id="bulk" style="display: none">
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
							<input type="file" name="ctl00$ContentPlaceHolder1$fileupload1"
								id="ContentPlaceHolder1_fileupload1" class="form-control" />
						</div>
						<div class="col-sm-2">
							<input type="submit" name="ctl00$ContentPlaceHolder1$btnupload"
								value="Upload" id="ContentPlaceHolder1_btnupload" tabindex="12"
								class="btn-primary btn btn-block" />
						</div>
						<div class="col-sm-2">
							<input type="submit" name="ctl00$ContentPlaceHolder1$btntemplate"
								value="Template" id="ContentPlaceHolder1_btntemplate"
								tabindex="12" class="btn-danger btn btn-block" />
						</div>
					</div>
					<hr />

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblcount" style="font-weight: bold;"></span>
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
																$('#oto')
																		.show();
																$('#bulk')
																		.hide();
															}
															if (chk == 1) {
																$('#bulk')
																		.show();
																$('#oto')
																		.hide();

															}
														});
									});

					function radioList() {
						debugger;
						var chk = $('#ContentPlaceHolder1_rbselect').find(
								":checked").val()

						if (chk == 0) {
							$('#oto').show();
							$('#bulk').hide();
						}
						if (chk == 1) {
							$('#bulk').show();
							$('#oto').hide();

						}
					}
				</script>


			</div>

			<!-- Pushy JS -->

			<script src="assets/js/pushy.min.js"></script>
			<script src="assets/js/jquery-1.10.2.js"></script>
			<script src="assets/js/bootstrap.js"></script>
			<script src="assets/js/bootstrap.min.js"></script>
			<link
				href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css"
				rel="stylesheet" type="text/css" />
			<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		</div>
	
	<link href="assets/css/circle.css" rel="stylesheet" />
	<%
		}
	%>
</body>
</html>
