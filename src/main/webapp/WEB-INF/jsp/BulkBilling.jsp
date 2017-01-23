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
table#ContentPlaceHolder1_chkTask {
	margin-left: 80px;
}

table#ContentPlaceHolder1_gvbilling {
	background-color: #d5f7ce;
}

table td {
	width: 350px;
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
			<header class="site-header push"> <marquee>Welcome
				to Cable TV Show</marquee> </header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
			<ul>
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




				<script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$abc', 'form1', ['tctl00$ContentPlaceHolder1$upd','ContentPlaceHolder1_upd','tctl00$ContentPlaceHolder1$UpdatePanel1','ContentPlaceHolder1_UpdatePanel1','tctl00$ContentPlaceHolder1$msgbox','ContentPlaceHolder1_msgbox'], [], [], 90, 'ctl00');
//]]>
</script>

				<div id="ContentPlaceHolder1_upd">


					<div class="row">
						<div class=" col-md-4 col-md-offset-4">
							<table id="ContentPlaceHolder1_rbselect" class="form-control">
								<tr>
									<td><span class="radio-inline"><input
											id="ContentPlaceHolder1_rbselect_0" type="radio"
											name="ctl00$ContentPlaceHolder1$rbselect" value="0"
											onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$rbselect$0\&#39;,\&#39;\&#39;)&#39;, 0)" /><label
											for="ContentPlaceHolder1_rbselect_0">Generate</label></span></td>
									<td><span class="radio-inline"><input
											id="ContentPlaceHolder1_rbselect_1" type="radio"
											name="ctl00$ContentPlaceHolder1$rbselect" value="1"
											checked="checked" /><label
											for="ContentPlaceHolder1_rbselect_1">Download</label></span></td>
								</tr>
							</table>
						</div>
					</div>

				</div>

				<hr />
				<div class="row">

					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							<input name="ctl00$ContentPlaceHolder1$txttodate" type="text"
								id="ContentPlaceHolder1_txttodate" tabindex="1"
								class="form-control" placeholder="From Date" />
						</div>

					</div>

					<div class="col-sm-2">
						<div style="margin-bottom: 10px">

							<input name="ctl00$ContentPlaceHolder1$txtfromdate" type="text"
								id="ContentPlaceHolder1_txtfromdate" tabindex="2"
								class="form-control" placeholder="To Date" />

						</div>
					</div>

					<div class="col-sm-2">
						<div style="margin-bottom: 10px">

							<input name="ctl00$ContentPlaceHolder1$txtvcno" type="text"
								id="ContentPlaceHolder1_txtvcno" tabindex="2"
								class="form-control" placeholder="VC No." />
						</div>
					</div>
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							<input name="ctl00$ContentPlaceHolder1$txtmobile" type="text"
								id="ContentPlaceHolder1_txtmobile" tabindex="1"
								class="form-control" placeholder="Mobille No." />

						</div>

					</div>
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							<input name="ctl00$ContentPlaceHolder1$txtstatus" type="text"
								id="ContentPlaceHolder1_txtstatus" tabindex="2"
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

					<div class="col-sm-12">
						<div class="col-sm-12">
							<hr />
							<div style="margin-bottom: 0px">
								<p>
									<b>Total Count : <span id="ContentPlaceHolder1_lblcount"
										style="font-weight: bold;">10</span>
									</b>
								</p>
							</div>
						</div>

						<div id="ContentPlaceHolder1_UpdatePanel1">

							<div>
								<table
									class="table table-striped table-bordered table-hover fontsize"
									cellspacing="0" rules="all" border="1"
									id="ContentPlaceHolder1_gvbilling"
									style="width: 100%; border-collapse: collapse;">
									<tr>
										<th scope="col">Sn No</th>
										<th scope="col">Invoice No</th>
										<th scope="col">VC No</th>
										<th scope="col">Mobile No</th>
										<th scope="col">Name</th>
										<th scope="col">Amount</th>
										<th scope="col">Billing</th>
										<th scope="col">DueDate</th>
										<th scope="col">Status</th>
										<th scope="col">Action</th>
									</tr>
									<tr>
										<td>1</td>
										<td>120012</td>
										<td>7845120369</td>
										<td>9876543210</td>
										<td>Harish</td>
										<td>150</td>
										<td>11/21/2016</td>
										<td>11/26/2016</td>
										<td>Paid</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_0"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>120013</td>
										<td>7458003210</td>
										<td>8745690010</td>
										<td>Mithun Chokorwaty</td>
										<td>50</td>
										<td>11/22/2016</td>
										<td>11/27/2016</td>
										<td>Paid</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_1"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl03$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td>120014</td>
										<td>7115120369</td>
										<td>9876543470</td>
										<td>Bhim Rao</td>
										<td>25</td>
										<td>11/23/2016</td>
										<td>11/28/2016</td>
										<td>Paid</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_2"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl04$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>120015</td>
										<td>8458963474</td>
										<td>8745101102</td>
										<td>Subendo</td>
										<td>50</td>
										<td>11/24/2016</td>
										<td>11/29/2016</td>
										<td>Pending</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_3"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl05$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>120016</td>
										<td>7894125630</td>
										<td>9876000010</td>
										<td>Parth Prattim</td>
										<td>75</td>
										<td>11/25/2016</td>
										<td>11/30/2016</td>
										<td>Paid</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_4"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl06$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>6</td>
										<td>120017</td>
										<td>7788994455</td>
										<td>8745622210</td>
										<td>Songeeta</td>
										<td>100</td>
										<td>11/26/2016</td>
										<td>12/1/2016</td>
										<td>Paid</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_5"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl07$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>7</td>
										<td>120018</td>
										<td>9988110101</td>
										<td>9876432111</td>
										<td>Anando Bhai</td>
										<td>500</td>
										<td>12/15/2016</td>
										<td>12/20/2016</td>
										<td>Pending</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_6"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl08$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>8</td>
										<td>120019</td>
										<td>7896532140</td>
										<td>8745777210</td>
										<td>Bipashsha Basu</td>
										<td>50</td>
										<td>12/16/2016</td>
										<td>12/21/2016</td>
										<td>Paid</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_7"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl09$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>9</td>
										<td>120020</td>
										<td>4986320142</td>
										<td>8566311471</td>
										<td>Chandranath Bose</td>
										<td>20</td>
										<td>12/17/2016</td>
										<td>12/22/2016</td>
										<td>Expire</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_8"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl10$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>10</td>
										<td>120021</td>
										<td>1258562233</td>
										<td>9911152626</td>
										<td>Bankim Chatoorjee</td>
										<td>10</td>
										<td>12/18/2016</td>
										<td>12/23/2016</td>
										<td>Pending</td>
										<td><a id="ContentPlaceHolder1_gvbilling_LnktDetail_9"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl11$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td colspan="10"><table>
												<tr>
													<td><span>1</span></td>
													<td><a
														href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling&#39;,&#39;Page$2&#39;)">2</a></td>
												</tr>
											</table></td>
									</tr>
								</table>
							</div>

						</div>
					</div>



				</div>

				<div class="modal fade" id="modal1" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">


							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Select</h4>
							</div>
							<div class="modal-body">
								<table id="ContentPlaceHolder1_chkTask"
									style="font-size: Small;">
									<tr>
										<td><input id="ContentPlaceHolder1_chkTask_0"
											type="checkbox" name="ctl00$ContentPlaceHolder1$chkTask$0"
											value="SMS" /><label for="ContentPlaceHolder1_chkTask_0">SMS</label></td>
										<td><input id="ContentPlaceHolder1_chkTask_1"
											type="checkbox" name="ctl00$ContentPlaceHolder1$chkTask$1"
											value="E-MAIL" /><label for="ContentPlaceHolder1_chkTask_1">E-MAIL</label></td>
										<td><input id="ContentPlaceHolder1_chkTask_2"
											type="checkbox" name="ctl00$ContentPlaceHolder1$chkTask$2"
											value="OSD" /><label for="ContentPlaceHolder1_chkTask_2">OSD</label></td>
									</tr>
								</table>
							</div>
							<div class="modal-footer">
								<input type="submit" name="ctl00$ContentPlaceHolder1$btnok"
									value="Submit" id="ContentPlaceHolder1_btnok"
									class="btn btn-warning" />
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>


							</div>


						</div>
					</div>
				</div>


				<div class="modal fade bd-example-modal-lg" tabindex="-1"
					id="modalDetails" role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
					<div class="modal-dialog2 modal-lg">
						<!-- Modal content-->
						<div class="modal-content">

							<div class="modal-header" style="background-color: red">
								<button type="button" class="close" data-dismiss="modal"></button>
								<h4 align="center" class="modal-title">
									<b style="color: white">TV Cable</b>
								</h4>
							</div>
							<div class="modal-body">

								<div id="ContentPlaceHolder1_msgbox">

									<div id="ContentPlaceHolder1_pnlPrint">



										<br />
										<div id="print_ticket">
											<div class="row">
												<div class="col-md-12">

													<table>
														<tr>
															<td>
																<div style="width: 650px; margin-left: 10px"
																	class="pull-left">
																	<p>
																		<b> <span id="ContentPlaceHolder1_lblname"></span></b>
																	</p>
																	<p>
																		<span id="ContentPlaceHolder1_lbladd1"></span>
																	</p>
																	<p>
																		<span id="ContentPlaceHolder1_lbladd2"></span>
																	</p>

																</div>
															</td>
															<td>
																<div style="width: 500px" class="pull-right">
																	<table>
																		<tr>
																			<td style="border: ridge">Account No</td>
																			<td style="border: ridge"><span
																				id="ContentPlaceHolder1_lblac"></span></td>
																		</tr>
																		<tr>
																			<td style="border: ridge">Bill Number</td>
																			<td style="border: ridge"><span
																				id="ContentPlaceHolder1_lblbillno"></span></td>
																		</tr>

																		<tr>
																			<td style="border: ridge">Billing Date</td>
																			<td style="border: ridge"><span
																				id="ContentPlaceHolder1_lblbilldate"></span></td>
																		</tr>
																		<tr>
																			<td style="border: ridge">Due Date</td>
																			<td style="border: ridge"><span
																				id="ContentPlaceHolder1_lblduedate"></span></td>
																		</tr>
																	</table>
																</div>
															</td>
														</tr>
													</table>
												</div>



											</div>
											<br />
											<div class="col-md-12" style="background-color: red">
												<p style="color: white" align="center">Make Online
													Payment and manage your account</p>
											</div>
											<div class="col-md-12">
												<table style="border: ridge">
													<tr>
														<td style="border: ridge; width: 210px"><b>Previous</b></td>
														<td style="border: ridge; width: 210px"><b>Last
																Payment</b></td>
														<td style="border: ridge; width: 210px">Advance<b></b></td>
														<td style="border: ridge; width: 210px"><b>Bill
																Amount </b></td>
														<td style="border: ridge; width: 210px"><b>Internet
																User Id</b></td>

													</tr>
													<tr>
														<td style="border: ridge; width: 210px"><b>RS 0</b></td>
														<td style="border: ridge; width: 210px"><b>RS 0</b></td>
														<td style="border: ridge; width: 210px">RS 0<b></b></td>
														<td style="border: ridge; width: 210px"><b>RS 520</b></td>
														<td style="border: ridge; width: 210px"><b>NA</b></td>
													</tr>
												</table>
											</div>
											<br />
											<div class="col-md-12">
												<div class="col-md-12">
													<table style="border: ridge">
														<tr>
															<td style="border: ridge; width: 700px"><b>Account
																	details</b></td>
															<td style="border: ridge; width: 100px"><b>Amount</b></td>
														</tr>
														<tr>
															<td colspan="2" style="border: ridge" align="center"><b>Primary
																	package</b></td>

														</tr>

														<tr>
															<td style="border: ridge; width: 700px">Super Gold
																Pack</td>
															<td style="border: ridge; width: 100px">Rs 170</td>
														</tr>


														<tr>
															<td colspan="2" style="border: ridge" align="center"><b>Add-on-TV</b></td>

														</tr>

														<tr>
															<td style="border: ridge; width: 700px">Add-on-TV
																qty 1</td>
															<td style="border: ridge; width: 100px">Rs 350</td>
														</tr>


														<tr>
															<td colspan="2" style="border: ridge" align="center"><b>A-la-carte
																	Pack</b></td>

														</tr>

														<tr>
															<td style="border: ridge; width: 700px">A-la-carte
																Pack Qty 0</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>

														<tr>
															<td colspan="2" style="border: ridge" align="center"><b>Internet
																	pack</b></td>

														</tr>

														<tr>
															<td style="border: ridge; width: 700px">Internet
																Pack</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>

														<tr>
															<td colspan="2" style="border: ridge" align="center"><b>Add
																	On Change</b></td>

														</tr>

														<tr>
															<td style="border: ridge; width: 700px">Set Top Box</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>
														<tr>
															<td style="border: ridge; width: 700px">Remote
																Control</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>
														<tr>
															<td style="border: ridge; width: 700px">Modem</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>

														<tr>
															<td style="border: ridge; width: 700px">Wifi-Router</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>

														<tr>
															<td style="border: ridge; width: 700px">Reconnection
																Charge</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>

														<tr>
															<td style="border: ridge; width: 700px">Other Charge</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>


														<tr>
															<td align="right" style="border: ridge; width: 700px">(1)Service
																Tax</td>
															<td style="border: ridge; width: 100px">Rs 0.00</td>
														</tr>
														<tr>
															<td align="right" style="border: ridge; width: 700px">(2)Entertainment
																Tax</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>

														<tr>
															<td align="right" style="border: ridge; width: 700px"><b>Sub
																	Total</b></td>
															<td style="border: ridge; width: 100px"><b>RS
																	520</b></td>
														</tr>

														<tr>
															<td align="right" style="border: ridge; width: 700px">Previous
																Balance</td>
															<td style="border: ridge; width: 100px">Rs 0</td>
														</tr>

														<tr>
															<td align="right" style="border: ridge; width: 700px"><b>Discount</b></td>
															<td style="border: ridge; width: 100px"><b>Rs</b></td>
														</tr>


														<tr>
															<td align="right" style="border: ridge; width: 700px"><b>Total</b></td>
															<td style="border: ridge; width: 100px"><b>Rs
																	520</b></td>
														</tr>
														<tr>
															<td align="right" style="border: ridge; width: 700px"><b>Late
																	Payment Charges</b></td>
															<td style="border: ridge; width: 100px"><b>Rs 50</b></td>
														</tr>

														<tr>
															<td align="right" style="border: ridge; width: 700px"><b>Payable
																	after due date</b></td>
															<td style="border: ridge; width: 100px"><b>Rs
																	570</b></td>
														</tr>

													</table>



												</div>

											</div>

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

				<script src="js/jquery-1.10.2.js"></script>
				<script src="js/bootstrap.js"></script>
				<script src="js/bootstrap.min.js"></script>


				<script type="text/javascript">


        $(document).ready(function () {
            debugger;


            $('#ContentPlaceHolder1_txttodate').datepicker({ dateFormat: 'dd-mm-yy' });
            $('#ContentPlaceHolder1_txtfromdate').datepicker({ dateFormat: 'dd-mm-yy' });

        });



        function PrintPanel() {
            var panel = document.getElementById("ContentPlaceHolder1_pnlPrint");
            var printWindow = window.open('', '', 'height=400,width=850');
            printWindow.document.write('<html><head><title>Generate Bill</title>');
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

	<%
		}
	%>
	<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
