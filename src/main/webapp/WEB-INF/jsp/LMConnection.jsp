


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
	text-align: center;
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
			<header class="site-headerl push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>
				
						<li class="pushy-link" ><div width="75%"><div><a href="#" style="background:#808080;color:white"><h5>${user}</h5></font></a></div></div></li>
									<li class="pushy-link"><a href="allLMComplain.html?user=${user}">Complaint</a></li>
					<li class="pushy-link"><a href="lmConnection.html?user=${user}">Connection</a></li>
					<!--                     <li class="pushy-link"><a href="packages.aspx">Packages</a></li> -->
					<li class="pushy-link"><a href="topupPage.html?user=${user}">Top-UP</a></li>
					<li class="pushy-link"><a href="accountMgmt.html?user=${user}">Account Management</a></li>
<!-- 					<li class="pushy-link"><a href="LMBulkTransactions.jsp">Bulk -->
<!-- 							Transactions</a></li> -->
					<!--                     <li class="pushy-link"><a href="stock.aspx">Stock</a></li> -->
					<!--                     <li class="pushy-link"><a href="report.aspx">Reports</a></li> -->
					<!--                     <li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
					<li class="pushy-link"><a href="lmAccount.html?user=${user}">My Account</a></li>
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
								<td><span class="radio-inline"><label
										for="ContentPlaceHolder1_rbselect_0">Create a New Connection</label></span></td>
<!-- 								<td><span class="radio-inline"><input -->
<!-- 										id="ContentPlaceHolder1_rbselect_1" type="radio" -->
<!-- 										name="ctl00$ContentPlaceHolder1$rbselect" value="1" -->
<!-- 										checked="checked" /><label -->
<!-- 										for="ContentPlaceHolder1_rbselect_1">Old Connection</label></span></td> -->
							</tr>
						</table>
					</div>
				</div>
				<hr />
				<div id="new" >

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
