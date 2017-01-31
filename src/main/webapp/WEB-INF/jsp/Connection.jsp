<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
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

table#ContentPlaceHolder1_gvdash {
	background-color: #d5f7ce;
}

table td {
	width: 400px;
}

.nofound{
color: red;
font-size: 3ex;
margin-left: 350px;
widows: 100%;


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
			System.out.println("session not found");
			response.sendRedirect("lcologin.html?error=Session is Expired!!!");
		} else {
			System.out.println("session found");
	%>

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
		//]]>
	</script>


	<script
		src="/WebResource.axd?d=pynGkmcFUV13He1Qd6_TZKFFXDUgfU-UBi18bCzN2i8L8PXrGrr6FjdHQr3cBNEzRsJNDUE1GktavLtDxtDl1Q2&amp;t=636104529900000000"
		type="text/javascript"></script>


	<script
		src="/ScriptResource.axd?d=NJmAwtEo3Ipnlaxl6CMhvl5RPGwiZk4IhiUb_fBMxxy3w24mdz1bRqpu2Tx6WXC7wzgLEKx2Uze1RGB4TIdZBCRYWsnky0yqlji6UbT6UMsMxwU8nE9xa4WdNI3ZYgtVUABIuH3yscl-YuTyXVnXXNmgZpthxma-XTavzibu-Vw1&amp;t=ffffffffc45b034e"
		type="text/javascript"></script>
	<script
		src="/ScriptResource.axd?d=dwY9oWetJoJoVpgL6Zq8OH0Sw-M4qzmZwT9bsg3n62-gOKiVwa9UCtjFUFX-MpMNFolFCkukdkkG0wDCoiXn4NuwfsJz-AWKjjH8hirPHQw006vVvWwxHha230iF_qCTZZzNf-bCZKOAMjMSmxWMQ9iQPtOU8werOASQNLJTDAU1&amp;t=ffffffffc45b034e"
		type="text/javascript"></script>

	<div>
		<header class="site-header push"> <marquee>Welcome to Payspot</marquee>  </header>
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
				href="oldConnections.html?user=<%=request.getParameter("user")%>">Connection</a></li>
			<li class="pushy-link"><a
				href="OldUserInfo.html?user=<%=request.getParameter("user")%>">Create
					User</a></li>
			<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
			<li class="pushy-link"><a
				href="lcoTopUp.html?user=<%=request.getParameter("user")%>">Top-UP</a></li>
			<li class="pushy-link"><a
				href="lcoBilling.html?user=<%=request.getParameter("user")%>">Bulk-Billing</a></li>
				<li class="pushy-link"><a href="lcoaccountMgmt.html?user=<%=request.getParameter("user")%>">Account Management</a></li>
				<li class="pushy-link"><a href="lcostock.html?user=<%= request.getParameter("user") %>">Stock</a></li>
			<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
			<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
			<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
			<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
			<li class="pushy-link"><a
				href="LCODetail.html?user=<%=request.getParameter("user")%>">My
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
				<button type="button" class="btndashborad btn-pink ">Connection </button>
			


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
									name="ctl00$ContentPlaceHolder1$rbselect" value="0" /><label
									for="ContentPlaceHolder1_rbselect_0">New Connection</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1"
									checked="checked" /><label
									for="ContentPlaceHolder1_rbselect_1">Old Connection</label></span></td>
						</tr>
					</table>
				</div>
			</div>
			<hr />
			<div id="new" style="display: none">

				<div class="container">
					<div class="row">
						<form:form action="addNewUser.html" method="get"
							commandName="subForm" autocomplete="off">
							<div class="col-sm-6">
								<input type="hidden" name="user" value="${user }" />
								<div style="margin-bottom: 20px">
									<form:input path="customer_name" tabindex="1" 
										class="form-control" placeholder="Customer Name" required="required" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustname" type="text" id="ContentPlaceHolder1_txtcustname" tabindex="1" class="form-control" placeholder="Customer Name" /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_add" tabindex="1" required="required"
										class="form-control" placeholder="Customer Address" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustadd" type="text" id="ContentPlaceHolder1_txtcustadd" tabindex="2" class="form-control" placeholder="Customer Address" /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_mobile" tabindex="1" required="required"
										class="form-control" placeholder="Customer Mobile No." />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustmobilenumber" type="text" id="ContentPlaceHolder1_txtcustmobilenumber" tabindex="3" class="form-control" placeholder="Customer Mobile No." /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_email" tabindex="1" required="required"
										class="form-control" placeholder="Customer Email-ID" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustEmailid" type="text" id="ContentPlaceHolder1_txtcustEmailid" tabindex="4" class="form-control" placeholder="Customer Email-ID" /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input type="number" name="username" tabindex="1" class="form-control" required="required"
										placeholder="Customer ID" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustid" type="text" id="ContentPlaceHolder1_txtcustid" tabindex="5" class="form-control" placeholder="Customer ID No." /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_stb_no" tabindex="1" required="required"
										class="form-control" placeholder="Customer STB No," />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustsbtno" type="text" id="ContentPlaceHolder1_txtcustsbtno" tabindex="6" class="form-control" placeholder="Customer STB No," /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input type="file" name="customer_photo" 
										id="ContentPlaceHolder1_fupohoto" tabindex="7"
										title="Upload Photo" class="form-control" placeholder="Photo" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_id_no" tabindex="1" required="required"
										class="form-control" placeholder="Customer ID Proof Number" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustvcno" type="text" id="ContentPlaceHolder1_txtcustvcno" tabindex="8" class="form-control" placeholder="Customer VC No." /> -->

								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_vc_no" tabindex="1" required="required"
										class="form-control" placeholder="Customer VC No." />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustvcno" type="text" id="ContentPlaceHolder1_txtcustvcno" tabindex="8" class="form-control" placeholder="Customer VC No." /> -->

								</div>
							</div>



							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
								<form:input path="customer_waranty_date"
										name="ctl00$ContentPlaceHolder1$txttodate"
										id="ContentPlaceHolder1_txttodate" tabindex="1"
										class="form-control" placeholder="VC Warranty Date" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustVCwarantydate" type="text" id="ContentPlaceHolder1_txtcustVCwarantydate" tabindex="10" class="form-control" placeholder="VC Warranty Date" /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="connection_status" tabindex="1"
										class="form-control" placeholder="Customer Status" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustconnection" type="text" id="ContentPlaceHolder1_txtcustconnection" tabindex="11" class="form-control" placeholder="Connection Status" /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:select path="package_name" class="form-control"
										placeholder="Package Name">
										<form:option value="NONE"> --SELECT--</form:option>
										<form:options items="${pckInfo}" />
									</form:select>

									<!--                         <select name="ctl00$ContentPlaceHolder1$ddlpackage" id="ContentPlaceHolder1_ddlpackage" class="form-control"> -->
									<!-- 	<option value="Select">SELECT</option> -->
									<!-- 	<option value="299/Month">299/Month</option> -->
									<!-- 	<option value="399/Month">399/Month</option> -->
									<!-- 	<option value="599/Month">599/Month</option> -->

									<!-- </select> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="account_balance" tabindex="1" required="required"
										class="form-control" placeholder="Amount" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustBal" type="text" id="ContentPlaceHolder1_txtcustBal" tabindex="13" class="form-control" placeholder="Amount" /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="pairing_status" tabindex="1"
										class="form-control" placeholder="Pairing Status" />
									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustparing" type="text" id="ContentPlaceHolder1_txtcustparing" tabindex="14" class="form-control" placeholder="Pairing Status" /> -->

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="connection_go_live"
										name="ctl00$ContentPlaceHolder1$txtfromdate"
									id="ContentPlaceHolder1_txtfromdate" tabindex="2"
										class="form-control" placeholder="Expected Date Connection Go Live" />

									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustexpectdate" type="text" id="ContentPlaceHolder1_txtcustexpectdate" tabindex="15" class="form-control" placeholder="Expected Date Connection Go Live" /> -->

								</div>
							</div>

								<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="con_expiry_date"
										name="ctl00$ContentPlaceHolder1$txtfromdate"
									id="ContentPlaceHolder1_txtforExp" tabindex="2"
										class="form-control" placeholder="Connection Expiry Date" />

									<!--                         <input name="ctl00$ContentPlaceHolder1$txtcustexpectdate" type="text" id="ContentPlaceHolder1_txtcustexpectdate" tabindex="15" class="form-control" placeholder="Expected Date Connection Go Live" /> -->

								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<div class="col-sm-6">
										<input type="submit"
											name="ctl00$ContentPlaceHolder1$btnsubmit" value="Submit"
											id="ContentPlaceHolder1_btnsubmit"
											class="btn btn-primary btn-block" style="font-weight: bold;" />
									</div>
									<div class="col-sm-6">
										<input type="reset" name="ctl00$ContentPlaceHolder1$btn_reset"
											value="Reset" id="ContentPlaceHolder1_btn_reset"
											disabled="disabled" tabindex="30"
											class="aspNetDisabled btn btn-default btn-block"
											style="font-weight: bold;" />
									</div>


								</div>
							</div>

							<div class="col-sm-12" style="height: 1px"></div>
						</form:form>
					</div>
				</div>

			</div>

			<div id="old">

				<div id="ContentPlaceHolder1_upd1">

					<div class="row">
					<form:form action="searchLCOConByLCO.html" method="get">
					<input type="hidden" name="user" value="${user }"/>
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="fdate" type="text"
									id="fdate" tabindex="1"
									class="form-control" placeholder="From Date" />

							</div>

						</div>
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">

								<input name="edate" type="text"
									id="edate" tabindex="2"
									class="form-control" placeholder="To Date" />

							</div>
						</div>


						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="stb_no" type="text"
									id="fdate" tabindex="3"
									class="form-control" placeholder="STB No." />
							</div>

						</div>

						<div class="col-sm-3">
							<div style="margin-bottom: 10px">

								<input name="VC_No" type="text"
									id="ContentPlaceHolder1_txtvcno" tabindex="4"
									class="form-control" placeholder="VC No." />
							</div>
						</div>
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="mobile" type="text"
									id="ContentPlaceHolder1_txtmobile" tabindex="5"
									class="form-control" placeholder="Mobile No." />

							</div>

						</div>

						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<select name="status"
									id="ContentPlaceHolder1_ddlstatus" tabindex="6"
									class="form-control">
									<option value="0">Select</option>
									<option value="Pending">Pending</option>
									<option value="Live">Live</option>
									<option value="Expire">Expire</option>

								</select>

							</div>

						</div>
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="pckg" type="text"
									id="ContentPlaceHolder1_txtpackage" tabindex="7"
									class="form-control" placeholder="Package Name" />

							</div>

						</div>


						<div class="col-sm-3">
							<div style="margin-bottom: 10px">

								<input type="submit"
									name="ctl00$ContentPlaceHolder1$btn_submit_request"
									value="Search" id="ContentPlaceHolder1_btn_submit_request"
									tabindex="30" class="btn-success btn btn-block" />


							</div>
							
						</div>
						<div class="nofound">  ${error} </div>
				</form:form>
				
					</div>
				


					<div class="col-sm-12">
						<hr />
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p>
									Total Count : <span id="ContentPlaceHolder1_lblcount"
										style="font-weight: bold;">${count}</span>
								</p>
							</div>
						</div>
						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_gvdash"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col">SN</th>
									<th scope="col">Account_ID</th>
									<th scope="col">VC_No</th>
									<th scope="col">Customer_Name</th>
									<th scope="col">Customer_Email</th>
									<th scope="col">Connection_Status</th>
									<th scope="col">Create_Time</th>
									<th scope="col">Action</th>
									<th scope="col">Action</th>
								</tr>

								<tr>
								<c:forEach items="${userList}" var="user" varStatus="itr">
										<tr>
											<td>${offset + itr.index +1 }</td>
											<td>${user.username}</td>
											<td>${user.customer_vc_no}</td>
											<td>${user.customer_name}</td>
											<td>${user.customer_email}</td>
											<td>${user.connection_status}</td>
											<td>${user.timestamp}</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktEdit_0"
												class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a></td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_0"
												class="btn-primary btn btn-sm btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
											</td>
											
										</tr>
									</c:forEach>
								
								</tr>
							</table>
									<tag:paginate max="15" offset="${offset}" count="${count}"
			uri="oldConnections.html?user=${user}" next="&raquo;" previous="&laquo;" />
						</div>

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
							<button type="button" class="close" data-dismiss="modal">&times;</button>
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

				<script type="text/javascript">
					$(document).ready(function() {
						debugger;

						$('#edate').datepicker({
							dateFormat : 'yy-mm-dd'
						});
						$('#fdate').datepicker({
							dateFormat : 'yy-mm-dd'
						});

					});
				</script>
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
															$('#new').show();
															$('#old').hide();
														}
														if (chk == 1) {
															$('#old').show();
															$('#new').hide();

														}
													});

// 									$('#ContentPlaceHolder1_txttodate')
// 											.datepicker({
// 												dateFormat : 'yy-mm-dd'
// 											});
// 									$('#ContentPlaceHolder1_txtfromdate')
// 											.datepicker({
// 												dateFormat : 'yy-mm-dd'
// 											});
// 									$('#ContentPlaceHolder1_txtforExp')
// 									.datepicker({
// 										dateFormat : 'yy-mm-dd'
// 									});
									
// 									$(
// 											'#ContentPlaceHolder1_txtcustVCwarantydate')
// 											.datepicker({
// 												dateFormat :'yy-mm-dd'
// 											});
								});

				function radioList() {
					debugger;
					var chk = $('#ContentPlaceHolder1_rbselect').find(
							":checked").val()

					if (chk == 0) {
						$('#new').show();
						$('#old').hide();
					}
					if (chk == 1) {
						$('#old').show();
						$('#new').hide();

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
	</form>
	<%
		}
	%>
	<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
