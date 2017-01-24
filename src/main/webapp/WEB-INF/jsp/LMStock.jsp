


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
<link rel="stylesheet" href="../css/normalize.css" />
<link rel="stylesheet" href="../css/demo.css" />
<link href="../css/bootstrap.css" rel="stylesheet" />
<!-- Pushy CSS -->
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
.p1 {
	font-style: initial;
	font-weight: bold;
	font-size: 16px;
}

table#ContentPlaceHolder1_grdSTB {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_grdVC {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_grdCable {
	background-color: #d5f7ce;
}

table#ContentPlaceHolder1_grdProduct {
	background-color: #d5f7ce;
}
</style>


</head>
<body
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">

	<%
		if (session.getAttribute("lmlogin") == null) {
			System.out.print("session not found");
			response.sendRedirect("lmlogin.html?error=Session is Expired!!!");
		} else {
			System.out.print("session found");
	%>
	<form method="post" action="#" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="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" />
		</div>

		<script type="text/javascript">
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
		
		</script>


		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="FB82118F" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="cMWqX8My8rQMBTUrQ4GrVZC9J1sGulidDHJFzfWcgn2xxxgPdZkS8ScbjJDgckM96/Va8hz5tUOKwkafol4YqIub5C1Sr5gYvYRHGdVpRrOP5CYa1onw4QyZJEpDCI/ihDr0YzvSw+HXAQW6FZzNYxpFpQRVvzYZXZKRLxM5R/pLZQ/wKXAFn2WMBfpbBfJU+V1tFNo3/sgQcEkSoJsU9TgmEowmN7h8gOIFP8Z+CtI28hy6JkZH+0fK518xVciBh6AGC2J3IEq0rWEtygHw7ml+C8sck1BYuWfhfRA5ej+FoDRM2gmdRW1HdplrARHzB7TAAy2VutCi1QKqqQ03k2wZRjv0xrPiPVhJ+Tq74+YsqEz8JwywRcc3bUt2y8emDppq7wgUFH9MHH1sR0X5tcAJ+p76ETcelga4oAJw1rYmdOi326lN3MJfPWb2J+j/U1gy6HzXxDDHXZfsYvgosYNcfjl6Jabjfjs2y41ZPNR80S7SwDTRzslxP18+iYKneT+IuGqvBeuwIKm/uLLk1IrXGbBw0ZSDx1GJiJ74PBlELwQfxjT6uUnpySQqYCS3mO1GE+NNkn/r9YRXjsMBlro/IMoLvd8Di9+OnwjxJUgsAmMA/wZwmBcUwUsTiOqXbgp1k8sBys5Z6CI8w/EsPkT4DYRTFO/oiLooaBwzNMAHaWPoJai0soZjd+2yl11LRFPu7pVp2m9t41KMvQwCDwgpMQ7cwL6Eou+daUM9kjFyKqhI3SUVEplqX0nnLVD1TxkPqVIv/KDaxygoXjkY94kV2A19UyiR1Abpb2+ZW/rJT2bDoOj6OramKNbCpr20qwDOr9td60U/ZdnZh594YIn3AzAquQvCX/8o3u/Iks5xPA7AQp9sIYCfgMEJwa1opNZCywh/nXmBHcnuSG3czl9qFYlL8VeLmcTZplB/3aE=" />
		</div>
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
<!--                <li class="pushy-link"><a href="packages.aspx">Packages</a></li> -->
					<li class="pushy-link"><a href="topupPage.html?user=${user}">Top-UP</a></li>
					<li class="pushy-link"><a href="accountMgmt.html?user=${user}">Account Management</a></li>
<!-- 				<li class="pushy-link"><a href="LMBulkTransactions.jsp">Bulk Transactions</a></li> -->
				    <li class="pushy-link"><a href="lmstock.html?user=${user}"">Stock</a></li>
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



				<div style="margin-left: auto; margin-right: auto; margin-top: -10px; width: 25em">
					<table id="ContentPlaceHolder1_rbselect" class="form-control"
						style="border-style: Double; font-size: Small;">
						<tr>
							<td><input id="ContentPlaceHolder1_rbselect_0" type="radio"
								name="ctl00$ContentPlaceHolder1$rbselect" value="0"
								checked="checked" /><label for="ContentPlaceHolder1_rbselect_0">STB
									Box</label></td>
							<td><input id="ContentPlaceHolder1_rbselect_1" type="radio"
								name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
								for="ContentPlaceHolder1_rbselect_1">VC Number</label></td>
							
						</tr>
					</table>
				</div>
				<hr />
				<div id="stb">

					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">STB Box</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblStbCount"
										style="font-weight: bold;">10</span>
								</p>
							</div>
						</div>


						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_grdSTB"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col">SN</th>
									<th scope="col">Customer STB No</th>
									<th scope="col">Brand</th>
									<th scope="col">MSO</th>
									<th scope="col">Manufacturer Date</th>
									<th scope="col">Expiry date</th>
									<th scope="col">Status</th>
									<th scope="col">&nbsp;</th>
									<th scope="col">&nbsp;</th>
								</tr>
								<tr>
									<td>1</td>
									<td>1456320789001</td>
									<td>Asus</td>
									<td>Hathway</td>
									<td>1/10/2012</td>
									<td>Feb-19</td>
									<td>Live</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdSTB$ctl02$btnEdit"
										value="View" id="ContentPlaceHolder1_grdSTB_btnEdit_0"
										disabled="disabled" class="aspNetDisabled btn btn-primary" />
									</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdSTB$ctl02$btnEdit"
										value="Print" id="ContentPlaceHolder1_grdSTB_btnEdit_0"
										disabled="disabled" class="aspNetDisabled btn btn-primary" />
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td>7894563210147</td>
									<td>IBM</td>
									<td>Siti Cable</td>
									<td>1/12/2013</td>
									<td>Mar-20</td>
									<td>Live</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdSTB$ctl03$btnEdit"
										value="View" id="ContentPlaceHolder1_grdSTB_btnEdit_1"
										disabled="disabled" class="aspNetDisabled btn btn-primary" />
									</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdSTB$ctl03$btnEdit"
										value="Print" id="ContentPlaceHolder1_grdSTB_btnEdit_1"
										disabled="disabled" class="aspNetDisabled btn btn-primary" />
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td>1456320/969001</td>
									<td>Cairo</td>
									<td>Home Cable</td>
									<td>9/1/2013</td>
									<td>Mar-19</td>
									<td>Live</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdSTB$ctl04$btnEdit"
										value="View" id="ContentPlaceHolder1_grdSTB_btnEdit_2"
										disabled="disabled" class="aspNetDisabled btn btn-primary" />
									</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdSTB$ctl04$btnEdit"
										value="Print" id="ContentPlaceHolder1_grdSTB_btnEdit_2"
										disabled="disabled" class="aspNetDisabled btn btn-primary" />
									</td>
								</tr>
								<tr>
									<td colspan="9"><table>
											<tr>
												<td><span>1</span></td>
												<td><a
													href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grdSTB&#39;,&#39;Page$2&#39;)">2</a></td>
											</tr>
										</table></td>
								</tr>
							</table>
						</div>

					</div>

				</div>

				<div id="vc" style="display: none">
					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p class="p1">VC No.</p>
								<p>
									Total No.of Data Uploaded : <span
										id="ContentPlaceHolder1_lblVC_Count"
										style="font-weight: bold;">10</span>
								</p>
							</div>
						</div>
						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_grdVC"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col">SN</th>
									<th scope="col">Customer VC No</th>
									<th scope="col">Brand</th>
									<th scope="col">MSO</th>
									<th scope="col">Manufacturer Date</th>
									<th scope="col">Expiry date</th>
									<th scope="col">Status</th>
									<th scope="col">&nbsp;</th>
									<th scope="col">&nbsp;</th>
									<th scope="col">&nbsp;</th>
								</tr>
								<tr>
									<td>1</td>
									<td>7845120369</td>
									<td>Asus</td>
									<td>Hathway</td>
									<td>1/10/2012</td>
									<td>Feb-19</td>
									<td>Live</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl02$btnEdit"
										value="Edit" id="ContentPlaceHolder1_grdVC_btnEdit_0"
										class="btn btn-primary" /></td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl02$btnEdit"
										value="View" id="ContentPlaceHolder1_grdVC_btnEdit_0"
										class="btn btn-primary" /></td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl02$btnEdit"
										value="Print" id="ContentPlaceHolder1_grdVC_btnEdit_0"
										class="btn btn-primary" /></td>
								</tr>
								<tr>
									<td>2</td>
									<td>7458003210</td>
									<td>IBM</td>
									<td>Siti Cable</td>
									<td>1/12/2013</td>
									<td>Mar-20</td>
									<td>Live</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit"
										value="Edit" id="ContentPlaceHolder1_grdVC_btnEdit_1"
										class="btn btn-primary" /></td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit"
										value="View" id="ContentPlaceHolder1_grdVC_btnEdit_1"
										class="btn btn-primary" /></td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit"
										value="Print" id="ContentPlaceHolder1_grdVC_btnEdit_1"
										class="btn btn-primary" /></td>
								</tr>
								<tr>
									<td>3</td>
									<td>7115120369</td>
									<td>Cairo</td>
									<td>Home Cable</td>
									<td>9/1/2013</td>
									<td>Mar-19</td>
									<td>Live</td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl04$btnEdit"
										value="Edit" id="ContentPlaceHolder1_grdVC_btnEdit_2"
										class="btn btn-primary" /></td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl04$btnEdit"
										value="View" id="ContentPlaceHolder1_grdVC_btnEdit_2"
										class="btn btn-primary" /></td>
									<td><input type="submit"
										name="ctl00$ContentPlaceHolder1$grdVC$ctl04$btnEdit"
										value="Print" id="ContentPlaceHolder1_grdVC_btnEdit_2"
										class="btn btn-primary" /></td>
								</tr>
								<tr>
									<td colspan="10"><table>
											<tr>
												<td><span>1</span></td>
												<td><a
													href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$grdVC&#39;,&#39;Page$2&#39;)">2</a></td>
											</tr>
										</table></td>
								</tr>
							</table>
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
																$('#stb')
																		.show();
																$('#vc').hide();
																

															}
															if (chk == 1) {

																$('#stb')
																		.hide();
																$('#vc').show();
																

															}
														});
									});
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
