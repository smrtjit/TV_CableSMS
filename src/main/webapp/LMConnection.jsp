


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
	<form method="post" action="./connection.aspx" id="form1"
		enctype="multipart/form-data">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
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
				id="__VIEWSTATEGENERATOR" value="86408EFB" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="16ClW969tRfsZm40GgQcM/j8KzzBO1hYYPKyTrKcvzmOVoWmY/IzVBx7brSaZxZ79/PgPPNgp35Gy9Mqgkg+UkfECTIzrzcw5nf9qzrx6hCBq5jT/NVkW80oQxX39jdepX9Wyghw+2Dihv/4mtOWSsRaqdMIgPqcxRbZQX3T3bsVl5PWSUaE7s2fq0dKC5VVEQWw+POun7gukT83hRE6l6khiMya4TlNbfvEdn+BadZc6yKdEmaoO0iR1KY7sVLRqUqVhiVJfLzjHnKSpQTpaV4O/NwOF9pblfXUMwUEGLt/fQNJltc8CN4lEVUHB9cr/9FE2E1zdWP8h6okcSmRqlXrfN6LDcpRYFZHNFYRl0j6DOAKUPbSiJ1qfVxgmd0OjLacIS7O1HnqbbB2Si/CiP6MRN55yJOW/sf2gCp05xQ8p4zexFuJP5M49+3gVi7vJip6M81IkTA6g2zS2gaBIRc3rQJIFkMFq1TucbiYHQc0N7CSLZOsu1jVHi7q77qY0DoXAoptQGYgW2lmXoEU94KmzD5SjNJxKxCAYrjMmGORE9C0VaV72exNEwpONr2cFlegpt0I2ZSOKJ0q5YkyZPvAeer6QYFmnDAq7xtwBMdhecvDon9tBRUZ9ze/1L0dzYjf65a9Q1u0S/uFsPlEuJHbqK4s39qhRo6jX1ma0JrMo8CYmxDoKPcs4Vx3BRSGXI0qXR5pmBjs95B3u+zMH2Kkvi0kY5EbDPmzJq6pAlUHcIcdSooZWfMs4B83GmsCzcd3YgUZz+AZqZ1elwmpszsaw+nVYfI/tVYI/6RNcSNi8xVSW2/k/RMISPLxIsaLCLThqeh4H21tqnTdV/uUGFDBEovytUPIbmOR0NvoMYAOcvSGuCWdoSd/24XX5GsHGbdFYk7fEQm0d7NMFZ+6fXBwIP2OX6wsWm28YHuZU+kr/SN4hcDwZ910uXEQMv9elA4ySQzl/bk6aKx+Qah8+jMGos27/HUTUw0k4C+2agrr4l8tW4V4CuFjwp3ImOG9" />
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
					Sys.WebForms.PageRequestManager._initialize(
							'ctl00$ContentPlaceHolder1$ScriptManager1',
							'form1', [ 'tctl00$ContentPlaceHolder1$upd1',
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

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtcustname" type="text"
										id="ContentPlaceHolder1_txtcustname" tabindex="1"
										class="form-control" placeholder="Customer Name" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtcustadd" type="text"
										id="ContentPlaceHolder1_txtcustadd" tabindex="2"
										class="form-control" placeholder="Customer Address" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustmobilenumber"
										type="text" id="ContentPlaceHolder1_txtcustmobilenumber"
										tabindex="3" class="form-control"
										placeholder="Customer Mobile No." />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustEmailid"
										type="text" id="ContentPlaceHolder1_txtcustEmailid"
										tabindex="4" class="form-control"
										placeholder="Customer Email-ID" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustid" type="text"
										id="ContentPlaceHolder1_txtcustid" tabindex="5"
										class="form-control" placeholder="Customer ID No." />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustsbtno"
										type="text" id="ContentPlaceHolder1_txtcustsbtno" tabindex="6"
										class="form-control" placeholder="Customer STB No," />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input type="file" name="ctl00$ContentPlaceHolder1$fupohoto"
										id="ContentPlaceHolder1_fupohoto" tabindex="7"
										title="Upload Photo" class="form-control" placeholder="Photo" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustvcno" type="text"
										id="ContentPlaceHolder1_txtcustvcno" tabindex="8"
										class="form-control" placeholder="Customer VC No." />

								</div>
							</div>



							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustVCwarantydate"
										type="text" id="ContentPlaceHolder1_txtcustVCwarantydate"
										tabindex="10" class="form-control"
										placeholder="VC Warranty Date" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustconnection"
										type="text" id="ContentPlaceHolder1_txtcustconnection"
										tabindex="11" class="form-control"
										placeholder="Connection Status" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<select name="ctl00$ContentPlaceHolder1$ddlpackage"
										id="ContentPlaceHolder1_ddlpackage" class="form-control">
										<option value="Select">SELECT</option>
										<option value="299/Month">299/Month</option>
										<option value="399/Month">399/Month</option>
										<option value="599/Month">599/Month</option>

									</select>

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustBal" type="text"
										id="ContentPlaceHolder1_txtcustBal" tabindex="13"
										class="form-control" placeholder="Amount" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustparing"
										type="text" id="ContentPlaceHolder1_txtcustparing"
										tabindex="14" class="form-control"
										placeholder="Pairing Status" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustexpectdate"
										type="text" id="ContentPlaceHolder1_txtcustexpectdate"
										tabindex="15" class="form-control"
										placeholder="Expected Date Connection Go Live" />

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
										<input type="submit"
											name="ctl00$ContentPlaceHolder1$btn_reset" value="Reset"
											id="ContentPlaceHolder1_btn_reset" disabled="disabled"
											tabindex="30"
											class="aspNetDisabled btn btn-default btn-block"
											style="font-weight: bold;" />
									</div>


								</div>
							</div>

							<div class="col-sm-12" style="height: 1px"></div>

						</div>
					</div>

				</div>

				<div id="old">


					<div class="row">
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txttodate" type="text"
									id="ContentPlaceHolder1_txttodate" tabindex="1"
									class="form-control" placeholder="From Date" />

							</div>

						</div>
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">

								<input name="ctl00$ContentPlaceHolder1$txtfromdate" type="text"
									id="ContentPlaceHolder1_txtfromdate" tabindex="2"
									class="form-control" placeholder="To Date" />

							</div>
						</div>


						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtsbtno" type="text"
									id="ContentPlaceHolder1_txtsbtno" tabindex="3"
									class="form-control" placeholder="STB No." />
							</div>

						</div>

						<div class="col-sm-3">
							<div style="margin-bottom: 10px">

								<input name="ctl00$ContentPlaceHolder1$txtvcno" type="text"
									id="ContentPlaceHolder1_txtvcno" tabindex="4"
									class="form-control" placeholder="VC No." />
							</div>
						</div>
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtmobile" type="text"
									id="ContentPlaceHolder1_txtmobile" tabindex="5"
									class="form-control" placeholder="Mobile No." />

							</div>

						</div>

						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<select name="ctl00$ContentPlaceHolder1$ddlstatus"
									id="ContentPlaceHolder1_ddlstatus" tabindex="6"
									class="form-control">
									<option value="0">Select</option>
									<option value="1">PENDING</option>
									<option value="2">FARWORD</option>

								</select>

							</div>

						</div>
						<div class="col-sm-3">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtpackage" type="text"
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

					</div>



					<div class="col-sm-12">
						<hr />
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p>
									Total Count : <span id="ContentPlaceHolder1_lblcount"
										style="font-weight: bold;">24</span>
								</p>
							</div>
						</div>
						<div id="ContentPlaceHolder1_upd1">

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
										<th scope="col">Aprovel</th>
										<th scope="col">Action</th>
									</tr>
									<tr>
										<td>1</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>1/12/2017 5:22:44 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_0"	class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>9559404556</td>
										<td>87777</td>
										<td>Ankit</td>
										<td>ankit@gmail.com</td>
										<td>LIVE</td>
										<td>1/5/2017 12:32:22 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_1"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl03$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td>9832469432</td>
										<td>900003</td>
										<td>Deepak</td>
										<td>deepak@gmail.com</td>
										<td>Live</td>
										<td>1/5/2017 10:34:37 AM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_2"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl04$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>7053450769</td>
										<td>8292</td>
										<td>Pramod</td>
										<td>PK@gmail.com</td>
										<td>LIVE</td>
										<td>1/4/2017 4:47:50 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_3"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl05$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>4785487891</td>
										<td>5147821203</td>
										<td>Asile Babu Ghosh</td>
										<td>dahalsalik@hotmail.com;</td>
										<td>Expire</td>
										<td>1/3/2017 7:17:52 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_4"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl06$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>6</td>
										<td>9876543210</td>
										<td>7845120369</td>
										<td>Harish</td>
										<td>rajanupreti@hotmail.com;</td>
										<td>Live</td>
										<td>1/3/2017 5:47:20 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_5"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl07$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>7</td>
										<td>9911152626</td>
										<td>1258562233</td>
										<td>Bankim Chatoorjee</td>
										<td>htrahddis@hotmail.com;</td>
										<td>Pending</td>
										<td>1/3/2017 5:24:00 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_6"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl08$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>8</td>
										<td>8566311471</td>
										<td>4986320142</td>
										<td>Chandranath Bose</td>
										<td>rafee90@hotmail.com;</td>
										<td>Expire</td>
										<td>1/3/2017 5:06:42 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_7"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl09$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>9</td>
										<td>8745777210</td>
										<td>7896532140</td>
										<td>Bipashsha Basu</td>
										<td>justchill_005@hotmail.com;</td>
										<td>Live</td>
										<td>1/2/2017 6:38:37 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_8"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl10$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>10</td>
										<td>9876432111</td>
										<td>9988110101</td>
										<td>Anando Bhai</td>
										<td>govinda_kavre@hotmail.com;</td>
										<td>Live</td>
										<td>1/2/2017 6:38:37 PM</td>
										<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_9"
											class="btn-primary btn btn-sm btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl11$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td colspan="8"><table>
												<tr>
													<td><span>1</span></td>
													<td><a
														href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$2&#39;)">2</a></td>
													<td><a
														href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$3&#39;)">3</a></td>
												</tr>
											</table></td>
									</tr>
								</table>
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
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
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
																$('#new')
																		.show();
																$('#old')
																		.hide();
															}
															if (chk == 1) {
																$('#old')
																		.show();
																$('#new')
																		.hide();

															}
														});

										$('#ContentPlaceHolder1_txttodate')
												.datepicker({
													dateFormat : 'dd-mm-yy'
												});
										$('#ContentPlaceHolder1_txtfromdate')
												.datepicker({
													dateFormat : 'dd-mm-yy'
												});
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
