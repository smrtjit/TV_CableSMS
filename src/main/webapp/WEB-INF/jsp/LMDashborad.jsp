


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
	<form method="post" action="./dashboard.aspx" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__LASTFOCUS"
				id="__LASTFOCUS" value="" /> <input type="hidden"
				name="__VIEWSTATE" id="__VIEWSTATE"
				value="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" />
		</div>

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
		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="0EEE3F3D" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="rAbX2GelldTGVMnDvjS2cfGttjub6r2a8KZgdBnjJJP9H/vUX+sDjkOHxzTST5xSjPdLhXoHDBAYRJOvh+fUM+9099PS7MqH70OQgQuB/x/6E5v/Niq5anrPrAZW4ifxzYbxhwKDVfoI1BQCUrJNGGdb+SnZRXBQuIiiDkCvtofLvRI3vqmbApgsepDrIh862/6J2zt5lkmMDQcsggDkn094IjREI4fxs/f40WaLBd44IPg+aYSQCbzUdHkQp89WnweoUqapiisbZFcfvwQ49h1/MVV/a9+IVKnhm2c9pAYa8V/NUVeAXzOBH3RKNG7V468wEQdW+IzptTvumQ4RdV2RK6AW2560e6wmRRyRKcOVdVukN8xLAA41yMgfX8SVgu5IOs/H4fhb+n4Il/94jGkG+EqZN8I8zyLJF4JsRUMCIRfwLIw5ee0XiYp5r13PWOZpCyfctUXNP7mTHq5781c4T2uFCTFMBtpjwiRHSeko3X0Mnhm5lNpjYfxzYnZA5A1oWcuSepmGvgrlB0VF0nlIzBBGMgA5VLuh+62gQCAsDJ5LuOxSFol+Sgh9dLLMgUpiy3woHwK/UiXc8QRJXwzpsPcdWaF2FcMu9bDMgRnY/VCV3pp1oiAeeMSq86u93Nd3zbJJMwXYtbFSlIgr9m/zYoYdoZ11IP8heZi8285mmT4c58EVa5Ozaor2QDtQZ+SOBC7ClPI9c2HArM5TYnTpJ/CTAFlhrJ7mmM5v0tR+eNN98E6wSx7WAlt7yTUihj6dJWHnT6k7ou/Xq+/n2N0F0fO0JkTsEbJBpJIkPxOPnoha4maCxRc2+DTsSni/bxLzmunk79jXUb9Da68kT8T8+/yXBFvLN1B8CD/c9cbTzEqDpGHFEk/Ccrhf+3GDzWvGQ2oGBOYd//zMdQ5mArihshgrH2Zc5eX6twCtf7zrWwdGvD6uZJZoOVNE8n+LqU5oZs31QetY+H4MkVppUVrk47woHRMI541cy+GJV5nAq5pvGCuiMspqJB8yhjDKm380i8LHTFZFADbCuyclPRElN/ojos0AM98iTSWrIeM=" />
		</div>
		<div>
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

								<input name="ctl00$ContentPlaceHolder1$txtmobileno" type="text"
									onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtmobileno\&#39;,\&#39;\&#39;)&#39;, 0)"
									onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
									id="ContentPlaceHolder1_txtmobileno" tabindex="2"
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
