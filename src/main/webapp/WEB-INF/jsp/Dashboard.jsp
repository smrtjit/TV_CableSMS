<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

.nofound {
	color: red;
	font-size: 3ex;
	margin-left: 350px;
	widows: 100%;
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

		function checkValue(vc, type) {
			alert("hello: " + vc + "type: " + type);
			 var xmlHttp = new XMLHttpRequest();
			    xmlHttp.open( "GET", 'checkComplaintForVC.html?number='vc+"&type="+type, false ); // false for synchronous request
			    xmlHttp.send( null );
			    return xmlHttp.responseText;
		}
	</script>


	<script
		src="WebResource.axd?d=pynGkmcFUV13He1Qd6_TZKFFXDUgfU-UBi18bCzN2i8L8PXrGrr6FjdHQr3cBNEzRsJNDUE1GktavLtDxtDl1Q2&amp;t=636104529900000000"
		type="text/javascript"></script>


	<script
		src="/ScriptResource.axd?d=NJmAwtEo3Ipnlaxl6CMhvl5RPGwiZk4IhiUb_fBMxxy3w24mdz1bRqpu2Tx6WXC7wzgLEKx2Uze1RGB4TIdZBCRYWsnky0yqlji6UbT6UMsMxwU8nE9xa4WdNI3ZYgtVUABIuH3yscl-YuTyXVnXXNmgZpthxma-XTavzibu-Vw1&amp;t=ffffffffc45b034e"
		type="text/javascript"></script>
	<script
		src="/ScriptResource.axd?d=dwY9oWetJoJoVpgL6Zq8OH0Sw-M4qzmZwT9bsg3n62-gOKiVwa9UCtjFUFX-MpMNFolFCkukdkkG0wDCoiXn4NuwfsJz-AWKjjH8hirPHQw006vVvWwxHha230iF_qCTZZzNf-bCZKOAMjMSmxWMQ9iQPtOU8werOASQNLJTDAU1&amp;t=ffffffffc45b034e"
		type="text/javascript"></script>

	<div>
		<header class="site-header push"> <marquee>Welcome
			to Cable TV Operator Management System</marquee> </header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
		<ul>
			<!--menu iteam code -->
			<li class="pushy-link"><a href="#"
				style="background: OLDLACE; color: black"><h5>${user}</h5>
					</font></a></li>
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
			<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
			<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
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


			<script type="text/javascript">
				//<![CDATA[
				Sys.WebForms.PageRequestManager._initialize(
						'ctl00$ContentPlaceHolder1$abc', 'form1', [
								'tctl00$ContentPlaceHolder1$upd1',
								'ContentPlaceHolder1_upd1',
								'tctl00$ContentPlaceHolder1$msgbox',
								'ContentPlaceHolder1_msgbox',
								'tctl00$ContentPlaceHolder1$UpdatePanel1',
								'ContentPlaceHolder1_UpdatePanel1' ], [], [],
						90, 'ctl00');
				//]]>
			</script>
			<!-- rownd circle code Connection DashBoard || Register_Complaint -->
			<div class="row">
				<div class=" col-md-4 col-xm-4 col-md-offset-4">
					<table id="ContentPlaceHolder1_rbselect" class="form-control">
						<tr>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_0" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="0" /><label
									for="ContentPlaceHolder1_rbselect_0">DashBoard</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
									for="ContentPlaceHolder1_rbselect_1">Register_Complaint</label></span></td>
						</tr>
					</table>
				</div>
			</div>

			<hr />
			<!-- rownd circle code Connection -->
			<div id="counter" class="container">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-9" style="margin-top: 70px">
						<button type="button" class="btnc btn-primary">
							Connection<span class="badge">7</span>
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btnc btn-success">
							Complaint<span class="badge">3</span>
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btnc btn-danger">
							Transaction<span class="badge">5</span>
						</button>
					</div>
				</div>

			</div>

			<div id="dash" style="display: none">
				<div id="ContentPlaceHolder1_upd1">




					<div class="row">
						<form action="searchComplainByanyOne.html">
							<input type="hidden" name="user" value="${user }" />
							<div class="col-sm-2">
								<div style="margin-bottom: 10px">
									<input name="fdate" type="text"
										id="ContentPlaceHolder1_txttodate" tabindex="1"
										class="form-control" placeholder="From Date" />
								</div>

							</div>

							<div class="col-sm-2">
								<div style="margin-bottom: 10px">

									<input name="edate" type="text"
										id="ContentPlaceHolder1_txtfromdate" tabindex="2"
										class="form-control" placeholder="To Date" />

								</div>
							</div>

							<div class="col-sm-2">
								<div style="margin-bottom: 10px">

									<input name="VC_No" type="text"
										id="ContentPlaceHolder1_txtvcno" tabindex="2"
										class="form-control" placeholder="VC No." />
								</div>
							</div>
							<div class="col-sm-2">
								<div style="margin-bottom: 10px">
									<input name="mobile" type="text"
										id="ContentPlaceHolder1_txtmobile" tabindex="1"
										class="form-control" placeholder="Mobile No." />

								</div>

							</div>
							<div class="col-sm-2">
								<div style="margin-bottom: 10px">
									<input name="status" type="text"
										id="ContentPlaceHolder1_txtpkg" tabindex="2"
										class="form-control" placeholder="Status" />
								</div>

							</div>

							<div class="col-sm-2">
								<div style="margin-bottom: 10px">

									<input type="submit"
										name="ctl00$ContentPlaceHolder1$btn_search_request"
										value="Search" id="ContentPlaceHolder1_btn_search_request"
										tabindex="30" class="btn-primary btn btn-block" />

								</div>

							</div>
						</form>
						<div class="nofound">${error}</div>
						<div style="margin-bottom: 0px">
							<p>
								<b>Total Count</b> : <span id="ContentPlaceHolder1_lblcount"
									style="font-weight: bold;">${fn:length(userList)}</span>
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
										<th scope="col">SN</th>
										<th scope="col">Complaint ID</th>
										<th scope="col">Customer VCNO.</th>
										<th scope="col">Customer Name</th>
										<th scope="col">Customer Address</th>
										<th scope="col">Customer Mobile</th>
										<th scope="col">Type of Complaint</th>
										<th scope="col">Current Status</th>
										<th scope="col">Action</th>
										<th scope="col">Action</th>
									</tr>

									<%
										int i = 0;
									%>
									<c:forEach items="${userList}" var="user">
										<tr>
											<td><%=i%></td>
											<td>${user.complaint_no}</td>
											<td>${user.customer_vcno}</td>
											<td>${user.customer_name}</td>
											<td>${user.customer_add}</td>
											<td>${user.customer_mobile}</td>
											<td>${user.complaint_type}</td>
											<td>${user.complaint_status}</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_0"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_0"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
											<%
												i++;
											%>
										</tr>
									</c:forEach>

								</table>
							</div>

						</div>

					</div>



				</div>

			</div>

			<div id="comp" style="height: 300px; display: none">


				<div class="row">

					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							<input name="VCNO" type="text"
								onchange="checkValue(this.value,'VC');"
								onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
								id="VCNo" tabindex="1" class="form-control"
								placeholder="VC Number" />

						</div>

					</div>
					<div class="col-sm-1">
						<div style="margin-bottom: 10px">
							<p style="margin-left: 20px">OR</p>

						</div>

					</div>
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">

							<input name="mobile" type="text"
								onchange="checkValue(this.value,'mobile');"
								onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
								id="mobile" tabindex="2" class="form-control"
								placeholder="Mobile Number" />

						</div>
					</div>

					<div class="col-sm-2">
						<div style="margin-bottom: 20px">
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

					<div class="col-sm-2">
						<textarea name="ctl00$ContentPlaceHolder1$txtrmark" rows="2"
							cols="20" id="ContentPlaceHolder1_txtrmark" class="form-control"
							placeholder="Add Remark">
</textarea>

					</div>
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">

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
															$('#dash').show();
															$('#comp').hide();
															$('#counter')
																	.hide();
														}
														if (chk == 1) {
															$('#comp').show();
															$('#dash').hide();
															$('#counter')
																	.hide();

														}
													});

									$('#ContentPlaceHolder1_txttodate')
											.datepicker({
												dateFormat : 'yy-mm-dd'
											});
									$('#ContentPlaceHolder1_txtfromdate')
											.datepicker({
												dateFormat : 'yy-mm-dd'
											});
									$('#ContentPlaceHolder1_txtactiondate')
											.datepicker({
												dateFormat : 'yy-mm-dd'
											});

								});

				function radioList() {
					debugger;
					var chk = $('#ContentPlaceHolder1_rbselect').find(
							":checked").val()
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
