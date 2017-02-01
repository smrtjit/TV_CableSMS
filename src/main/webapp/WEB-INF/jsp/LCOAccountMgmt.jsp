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
<link href="assets/css/bootstrap_style.css" rel="stylesheet" />
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
	<%if (session.getAttribute("lcoLogin") == null) {
				System.out.print("session not found");
				response.sendRedirect("lcologin.html?error=Session is Expired!!!");
			} else {
				System.out.print("session found");%>
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">


	<script type="text/javascript">
		//<![CDATA[
		var theForm = document.forms['form1'];
		if (!theForm) {
			theForm = document.form1;
		}
		function __doPostBack(eventTarget, eventArgument) {
			if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
				theForm.__EVENTTARGET.value = eventTarget;
				theForm.__EVENTARGUMENT.value = eventArgument;
				theForm.submit();
			}
		}

		// 			window.onload = function WindowLoad(event) {
		// 				$('#Income').show();
		// 				$('#Expense').hide();
		// 				$('#Tax').hide();
		// 			}
		//]]>
	</script>



	<div>
		<header class="site-header push"> <marquee>Welcome
			to Payspot</marquee> </header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
		<ul>
						<li class="pushy-link"><a href="LCOHome.html?user=${user}" style="background: OLDLACE; color: black"><h5>${user}</h5> </font></a></li>

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
			<li class="pushy-link"><a
				href="lcostock.html?user=<%=request.getParameter("user")%>">Stock</a></li>
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

			<button type="button" class="btndashborad btn-pink ">Manage
				Account</button>
			<script type="text/javascript">
				//<![CDATA[
				Sys.WebForms.PageRequestManager._initialize(
						'ctl00$ContentPlaceHolder1$ScriptManager1', 'form1', [
								'tctl00$ContentPlaceHolder1$upd1',
								'ContentPlaceHolder1_upd1',
								'tctl00$ContentPlaceHolder1$msgbox',
								'ContentPlaceHolder1_msgbox' ], [], [], 90,
						'ctl00');
				//]]>
			</script>

			<div class="row">
				<div class=" col-md-4 col-md-offset-4">
					<table id="ContentPlaceHolder1_rbselect" class="form-control">
						<tr>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_0" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="0"
									checked="checked" /><label
									for="ContentPlaceHolder1_rbselect_0">Income</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
									for="ContentPlaceHolder1_rbselect_1">Expenses</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_2" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="2" /><label
									for="ContentPlaceHolder1_rbselect_2">Tax</label></span></td>
						</tr>
					</table>
				</div>
			</div>
			<hr />
			<div id="Income" >
				<div  >
					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Invoice</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtDueDate" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="Invoice Number" />
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">From</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtamount" readonly="readonly" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="" />
							</div>
						</div>
					</div>
					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Amount</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" readonly="readonly" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="" />
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Service Tax</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" readonly="readonly" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="" />
							</div>
						</div>
					</div>
					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Amusement Tax</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" readonly="readonly" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="" />
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Other Tax</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" readonly="readonly" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="" />
							</div>
						</div>
					</div>

					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Is TDS Deducted</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" readonly="readonly" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="" />
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Recived Amount</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="Enter Recived Amount" />
							</div>
						</div>
					</div>

					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Recived Via</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="Enter Recived Via" />
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Reference ID</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcoupon" type="text"
									id="ContentPlaceHolder1_txtDueDate" class="form-control"
									placeholder="Enter Reference ID" />
							</div>
						</div>
					</div>
					<div class="col-sm-25"  >

						<div class=" col-sm-30">
							<div class="col-sm-2" style="margin-bottom: 30px">
								<p class="p1">Remark</p>
							</div>
							<div class="col-sm-6" style="margin-bottom: 30px">
								<textarea name="ctl00$ContentPlaceHolder1$txtrmark" rows="3"
							cols="100" id="ContentPlaceHolder1_txtrmark" class="form-control"
							placeholder="Enter Remark" style="overflow:auto;resize:none" >
								</textarea>
							</div>
						</div>


					</div>












					<div class="col-sm-12">
						<div class="col-sm-4"></div>
						<div class="col-sm-4" style="margin-bottom: 10px">
							<input type="submit" name="ctl00$ContentPlaceHolder1$btn_sbmit"
								value="Submit" id="ContentPlaceHolder1_btn_sbmit"
								class="btn btn-primary" /> <a class="btn btn-primary"
								href="Custrecharge.jsp">Cancel</a>
							<div class="col-sm-8" style="margin-bottom: 10px"></div>
						</div>

					</div>
				</div>
				<div class="col-sm-12" style="height: 1px"></div>
			</div>
		</div>
		<div id="Expense" style="display: none">
			<div id="ContentPlaceHolder1_upd1">
				<div class="row">
					<div class="col-sm-26">
						<div class="col-sm-10">
							<div class="col-sm-2">Add New Income</div>
							<div class="col-sm-6" style="margin-bottom: 12px;"></div>
							<div class="col-sm-2" style="margin-bottom: 10px">
								<input type="text" name="ctl00$ContentPlaceHolder1$btn_sbmit"
									value="TDS Deducted" id="ContentPlaceHolder1_btn_sbmit"
									class="btn btn-primary" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Date</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Bill No.</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">To</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Amount</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Service Tax</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">VAT</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Amusement Tax</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Other Tax</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Is TDS Deducted</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Paid Amount</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Remark</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>

		<div id="Tax" style="display: none">
			<div id="ContentPlaceHolder1_upd1">
				<div class="row">
					<div class="col-sm-26">
						<div class="col-sm-10">


							<div class="col-sm-2">Tax Collected</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtvcno" type="text"
									<%-- 											value="<%=request.getParameter("vc_no")%>" readonly="readonly" --%>
											 id="ContentPlaceHolder1_txtvcno"
									class="form-control" placeholder="" />
							</div>
							<div class="col-sm-2" style="margin-bottom: 10px">
								<input type="submit" name="ctl00$ContentPlaceHolder1$btn_sbmit"
									value="TDS Deducted" id="ContentPlaceHolder1_btn_sbmit"
									class="btn btn-primary" />
							</div>
							<div class="col-sm-2" style="margin-bottom: 10px">
								<input type="submit" name="ctl00$ContentPlaceHolder1$btn_sbmit"
									value="TDS Paid" id="ContentPlaceHolder1_btn_sbmit"
									class="btn btn-primary" />
							</div>

						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">From Date</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Particulars</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Service Tax</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">VAT</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Amusement Tax</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Other Tax</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
									id="ContentPlaceHolder1_txtBalance"
									<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-2">Total</div>
							<div class="col-sm-6" style="margin-bottom: 10px">
								<div class="col-sm-6" style="margin-bottom: 10px">
									<input name="ctl00$ContentPlaceHolder1$txtBalance" type="text"
										id="ContentPlaceHolder1_txtBalance"
										<%-- 											readonly="readonly" value="<%=request.getParameter("Account_balance")%>" --%>
											class="form-control"
										placeholder="" />
								</div>
							</div>
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
																	$('#Income')
																			.show();
																	$(
																			'#Expense')
																			.hide();
																	$('#Tax')
																			.hide();
																} else if (chk == 1) {
																	$(
																			'#Expense')
																			.show();
																	$('#Income')
																			.hide();
																	$('#Tax')
																			.hide();
																} else if (chk == 2) {
																	$(
																			'#Expense')
																			.hide();
																	$('#Income')
																			.hide();
																	$('#Tax')
																			.show();
																}
															});

											$('#ContentPlaceHolder1_txttodate')
													.datepicker({
														dateFormat : 'dd-mm-yy'
													});
											$(
													'#ContentPlaceHolder1_txtfromdate')
													.datepicker({
														dateFormat : 'dd-mm-yy'
													});
											$(
													'#ContentPlaceHolder1_txtcustVCwarantydate')
													.datepicker({
														dateFormat : 'dd-mm-yy'
													});
										});

						function radioList() {
							debugger;
							var chk = $('#ContentPlaceHolder1_rbselect').find(
									":checked").val()
							if (chk == 0) {
								$('#Income').show();
								$('#Expense').hide();
								$('#Tax').hide();
							}
							if (chk == 1) {
								$('#Expense').show();
								$('#Income').hide();
								$('#Tax').hide();
							}
							if (chk == 2) {
								$('#Expense').hide();
								$('#Income').hide();
								$('#Tax').show();
							}
						}

						function PrintPanel() {
							var panel = document
									.getElementById("ContentPlaceHolder1_pnlPrint");
							var printWindow = window.open('', '',
									'height=400,width=850');
							printWindow.document
									.write('<html><head><title>Pratikshat Solution</title>');
							printWindow.document.write('</head><body >');
							printWindow.document.write(panel.innerHTML);
							printWindow.document.write('</body></html>');
							printWindow.document.close();
							setTimeout(function() {
								printWindow.print();
							}, 500);
							return false;
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
		</div>

		<%
			}
		%>
		<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
