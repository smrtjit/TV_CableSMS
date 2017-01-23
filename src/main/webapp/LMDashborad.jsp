

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
<script src="bootstrap/js/pushy.min.js"></script>

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


$("#txtLeave").focus(function() {
    $(this).mouseleave(function() {
        alert("hello check");
        $(this).off();
    });
});

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
		
			<header class="site-headerl push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>
				<li class="pushy-link" ><a href="#" style="background:OLDLACE;color:black"><h5><%= request.getParameter("user") %></h5></font></a></li>
					<li class="pushy-link"><a href="LMDashborad.jsp?user=<%= request.getParameter("user") %>">Complaint</a></li>
					<li class="pushy-link"><a href="LMConnection.jsp?user=<%= request.getParameter("user") %>">Connection</a></li>
					<!--                     <li class="pushy-link"><a href="packages.aspx">Packages</a></li> -->
					<li class="pushy-link"><a href="LMTopup.jsp?user=<%= request.getParameter("user") %>">Top-UP</a></li>
					<li class="pushy-link"><a href="LAccount.jsp?user=<%= request.getParameter("user") %>">Account</a></li>
<!-- 					<li class="pushy-link"><a href="LMBulkTransactions.jsp">Bulk -->
<!-- 							Transactions</a></li> -->
					<!--                     <li class="pushy-link"><a href="stock.aspx">Stock</a></li> -->
					<!--                     <li class="pushy-link"><a href="report.aspx">Reports</a></li> -->
					<!--                     <li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
					<li class="pushy-link"><a href="LMMyAccount.jsp?user=<%= request.getParameter("user") %>">My Account</a></li>
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
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$abc', 'form1', ['tctl00$ContentPlaceHolder1$upd1','ContentPlaceHolder1_upd1','tctl00$ContentPlaceHolder1$msgbox','ContentPlaceHolder1_msgbox'], [], [], 90, 'ctl00');
//]]>
</script>



				<div class="row">
					<div class=" col-md-4 col-xm-4 col-md-offset-4">
						<table id="ContentPlaceHolder1_rbselect" class="form-control">
							<tr>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_0" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="0"
										checked="checked" /><label
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


				<div id="dash">




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
									class="form-control" placeholder="Mobile No." />

							</div>

						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtpkg" type="text"
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
						<div style="margin-bottom: 0px">
							<p>
								<b>Total Count</b> : <span id="ContentPlaceHolder1_lblcount"
									style="font-weight: bold;">31</span>
							</p>
						</div>
						<div class="col-sm-12">



							<div id="ContentPlaceHolder1_upd1">



								<div>
									<table
										class="table table-striped table-bordered table-hover fontsize"
										cellspacing="0" rules="all" border="1"
										id="ContentPlaceHolder1_gvdash"
										style="width: 100%; border-collapse: collapse;">
										<tr>
											<th scope="col">SN</th>
											<th scope="col">Complaint_ID</th>
											<th scope="col">Customer_ID</th>
											<th scope="col">Customer_Name</th>
											<th scope="col">Customer_Address</th>
											<th scope="col">Customer_Mobile</th>
											<th scope="col">Type of Complaint</th>
											<th scope="col">Current Status</th>
											<th scope="col">Action</th>
										</tr>
										<tr>
											<td>1</td>
											<td>13018</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>Select</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_0"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>2</td>
											<td>13017</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>Select</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_1"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl03$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>3</td>
											<td>13016</td>
											<td>9559404556</td>
											<td>Ankit</td>
											<td>Flat No. 16/3 Vardhman Block-5, South Bengal 713144</td>
											<td>9559404556</td>
											<td>Not Working</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_2"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl04$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>4</td>
											<td>13015</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>Bad Singnal</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_3"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl05$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>5</td>
											<td>13014</td>
											<td>9559404556</td>
											<td>Ankit</td>
											<td>Flat No. 16/3 Vardhman Block-5, South Bengal 713144</td>
											<td>9559404556</td>
											<td>STB Problem</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_4"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl06$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>6</td>
											<td>13011</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>Select</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_5"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl07$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>7</td>
											<td>13004</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>Bad Singnal</td>
											<td>HOLD</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_6"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl08$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>8</td>
											<td>13002</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>Bad Singnal</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_7"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl09$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>9</td>
											<td>13001</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>STB Problem</td>
											<td>RESOLVED</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_8"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl10$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>10</td>
											<td>13000</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>Channel Not Available</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_9"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl11$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td colspan="9"><table>
													<tr>
														<td><span>1</span></td>
														<td><a
															href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$2&#39;)">2</a></td>
														<td><a
															href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$3&#39;)">3</a></td>
														<td><a
															href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$4&#39;)">4</a></td>
													</tr>
												</table></td>
										</tr>
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
								<input name="ctl00$ContentPlaceHolder1$txtvcno2" type="text"
									onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtvcno2\&#39;,\&#39;\&#39;)&#39;, 0)"
									onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
									id="ContentPlaceHolder1_txtvcno2" tabindex="1"
									class="form-control" placeholder="VC Number" />

							</div>

						</div>
						<div class="col-sm-1">
							<div style="margin-bottom: 10px">
								<p style="margin-left: 20px">OR</p>

							</div>

						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input name="mobileNo" type="text"
									id="txtLeave" tabindex="2"
									class="form-control" placeholder="Mobile Number" />

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

								<input type="submit"
									name="ctl00$ContentPlaceHolder1$btn_addUser"
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

									<input name="ctl00$ContentPlaceHolder1$txtcustsbtno"
										type="text" id="ContentPlaceHolder1_txtcustsbtno"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
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
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
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
											<div>
												<div class="col-sm-3">
													<p class="p1">Current Status :</p>
												</div>
												<div class="col-sm-6"></div>

											</div>
										</div>
									</div>
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

				</div>
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

            $('#ContentPlaceHolder1_txttodate').datepicker({ dateFormat: 'dd-mm-yy' });
            $('#ContentPlaceHolder1_txtfromdate').datepicker({ dateFormat: 'dd-mm-yy' });


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
