


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
<link rel="stylesheet" href="assets/cssstyle.css">
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/pushy.css" />

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>




<style type="text/css">
.p1 {
	font-style: initial;
	font-weight: bold;
	font-size: 16px;
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
				id="__VIEWSTATEGENERATOR" value="51A85428" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="U6eS0VrrJ3kffIcRhrDsT3tcDvDgf4WqW6M+tEjXN+De5vgOPNzYBOvZJl2FmD5ZZzSH/WxAITgHnBc0jOnmX3Yg/tVDDdMpo6T8BzGxlKCmsHeguhbpbl08Q7pV43K3H6DafYWK9fq1+8TstgtR8lU7PWxtm1VhuppM2Vg8vOAp10JFGf31m3EWF1QDhiOi+FWvrJ3GmG2KVXB8AVASZAcgXpDyYA71ZuhnyOtfJvWzfnU5gR5pqEgXp8m7LJA88PrbH5XvW+sH0896z1rzrnmslwj4gDXQdbHLjMThotNRQGYt1Jzc1ILjIFvAEXnOqi+DOgJ3/BX7J/INVZrH2opMTeHJ5Lt7p+YFUisp8Tked+NKsm4YvEmc8CqUozAYPGF7yfdEslz5fCYIh+PQyOMqeyHsDjXqxRsk51oSS6Y476tcf6wDDZC6dMrMuDfuNnEWx2E8Yiq5m2l8R2tl078SzMxbqksCTeZ5r7WKLh5p0e3aPfbf3AX2bBLjoR42IPkFGXgopjzX/5++wHJzbY5o/cag2sXir4Py+nXhu13Z2cp2FshN7uw4KshME8cIPVkpdqsqIL4DR+yovBKl7esCaobwCl4sJpdM6ZlGqGVR8eswOTQ3HFpkYt6xIwvheuQMuk3Nd++wWpLQ28fgFaJLq/I5xFb3lZ4Mmwb3vitFXgAyFaJzWnNXrPjl8mGyWcdvOlMuWTwDqoCGDTBnwIGzk8cjn0xvHLgDc8NN2dNd+wpkiRhtjs9It0G7+enG1NY5EvJzqkWHklEdiBmCsH2gr3zO8+qYWT93OMV/QK0ujD1/X1D8D7tHpm9RnMdtFJsdiV+J9kJrVf91iN19rJGF0zx7RtClwUaTdsbiN+uANQkatsjB32tF+c4hAmZWq4P4TpAfWa9eVtFHD/soxahBmEziZOwzW71fyqm+lMg=" />
		</div>
		<div>
			<header class="site-header push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>

					<li class="pushy-link" ><a href="#" style="background:OLDLACE;color:black"><h5>${user}</h5></font></a></li>
				<li class="pushy-link"><a href="allLCOCollection.html?user=${user}">Collection</a></li>
				<li class="pushy-link"><a href="allLCOComplain.html?user=${user} ">Complaint</a></li>
				<li class="pushy-link"><a href="oldConnections.html?user=${user}">Connection</a></li>
				<li class="pushy-link"><a href="OldUserInfo.html?user=<%= request.getParameter("user") %>">Create User</a></li>
<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a href="lcoTopUp.html?user=${user}">Top-UP</a></li>
				<li class="pushy-link"><a href="lcoBilling.html?user=${user}">Bulk-Billing</a></li>
				<li class="pushy-link"><a href="lcoaccountMgmt.html?user=${user}">Account Management</a></li>
<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
				<li class="pushy-link"><a href="lcostock.html?user=${user}"">Stock</a></li>
<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a href="LCODetail.html?user=${user}">My Account</a></li>
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
					<div style="margin-left: auto; margin-right: auto; margin-top: -10px; width: 25em">
					
						<table id="ContentPlaceHolder1_rbselect" class="form-control">
							<tr>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_0" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="0"
										checked="checked" /><label
										for="ContentPlaceHolder1_rbselect_0">STB Box</label></span></td>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_1" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
										for="ContentPlaceHolder1_rbselect_1">VC Number</label></span></td>
								
							</tr>
						</table>
					</div>
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

						<div class=" table-responsive">
							<div>
								<table class="table table-striped jambo_table bulk_action"
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
											value="Edit" id="ContentPlaceHolder1_grdSTB_btnEdit_0"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
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
											value="Edit" id="ContentPlaceHolder1_grdSTB_btnEdit_1"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
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
											value="Edit" id="ContentPlaceHolder1_grdSTB_btnEdit_2"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
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
										<td>4</td>
										<td>89789456321017</td>
										<td>Insas</td>
										<td>NXT Digital</td>
										<td>4/1/2012</td>
										<td>Feb-19</td>
										<td>Live</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdSTB$ctl05$btnEdit"
											value="Edit" id="ContentPlaceHolder1_grdSTB_btnEdit_3"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdSTB$ctl05$btnEdit"
											value="View" id="ContentPlaceHolder1_grdSTB_btnEdit_3"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdSTB$ctl05$btnEdit"
											value="Print" id="ContentPlaceHolder1_grdSTB_btnEdit_3"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
									</tr>
									
									<tr>
										<td colspan="10"><table>
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
						<div class=" table-responsive">
							<div>
								<table class="table table-striped jambo_table bulk_action"
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
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdVC$ctl02$btnEdit"
											value="View" id="ContentPlaceHolder1_grdVC_btnEdit_0"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdVC$ctl02$btnEdit"
											value="Print" id="ContentPlaceHolder1_grdVC_btnEdit_0"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
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
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit"
											value="View" id="ContentPlaceHolder1_grdVC_btnEdit_1"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit"
											value="Print" id="ContentPlaceHolder1_grdVC_btnEdit_1"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
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
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdVC$ctl04$btnEdit"
											value="View" id="ContentPlaceHolder1_grdVC_btnEdit_2"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
										<td><input type="submit"
											name="ctl00$ContentPlaceHolder1$grdVC$ctl04$btnEdit"
											value="Print" id="ContentPlaceHolder1_grdVC_btnEdit_2"
											disabled="disabled" class="aspNetDisabled btn btn-primary" />
										</td>
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

	<link href="assets/css/circle.css" rel="stylesheet" />
	<%} %>
</body>
</html>
