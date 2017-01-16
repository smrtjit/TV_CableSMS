


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

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>



<style type="text/css">
table#ContentPlaceHolder1_gvcollection {
	background-color: #d5f7ce;
}
</style>
</head>
<body
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
	<%
			if(session.getAttribute("lcoLogin")==null){
				System.out.print("session not found");
				response.sendRedirect("lcologin.html?error=Session is Expired!!!");
			}else{
				System.out.print("session found");
				%>
	
	<form method="post" action="#" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="tuJP62W8MI09yUyQQEfTbmjGF+Jv0Y1GkJsV/+x1Y/XAV+PVaosNMcIe87cz5w4vJ9hCOuMSZLesXQuQ5LydsOrEdKzYHzRnrNTy66viNhvcrrbpO+6AIfbno5DapSE2IB9IDXCFLS2uKT6CUtLbG5NDKOZJDP+TnvdxUlXJL06ZHLnxK9mV3AQZ+tFimO3hBkMVNFoYmz4/qE4zR9x+PvfOy1DryqspC3VpckX1nbGudMGQgwAjGGk6Ve7GTsYIIZ5ajve6uKufHIfAzjhQz2Nu23iaAKb/fH1aZSrW2pl01t/Ai+zS1PTNgyS4hmtO2oKi0xEMMe59ZcTbQlgfX/hrZ+OWLzFXceUVxclW7GqdNhRVgsYOpTId89Qk58HUCkKaWK3lHem8pKYtQ+UScdSS6a0p1HjCcyWAadTd84F0jiEdOYLn3wucLKpWCYUMaSWXPHDt2IsbaXFTnmXmuMF7rBFSuuv0BBTBX1E+uqC5ioCX7EFgflckqEwRRONlNUM3bHtRCiYQiaBECW/tUrXi55S9N1iSnW3CcTSx8YTNcJxy6UIhPFoxwo2F8dXuRVEp4LMZ3vo6zNoiPkzxxtbrotQ0FOdoGcVCiDBAh3+EP/QcYZu7hb6K/s0YaP/JS87ajXwOXjLhDJGbq4faOSSTzun8y1tT44IIPGgflLq1ZfiIJoNWkkq855Wj+U3CEwPdk7nmWhgj9J4Z6EcMnaAn5aSqs4CZroUEoU7U/Vtd60qmbcIF/BtgZrwy+dewQraqzQ5PY44AyjOuZqxa5eTtaVT5W8g+DG0zCmsafIadl2KMLNx95f7ZaOlozFttUZjuj/rS72rOsjd/oqP3YH6USxM7gqAiNlRdTZRj+1P/ZRkL4ZIIk39asu6kChEfTEzcOGX7BDe5gN+wdlpY/9wxD7CuLoxkozcNxz0jWX0rAYMUDzXZWiVal7Fo59WgCKanZXcBDX/ZWfL53KlaDuk1vOlFIhmoMAHHQ1UpddZXT2M0nR8nVEhj4pD5qEuEJ0o9Tox9vX+RHCH2moC1dFfrYSGHsVX/4QLCgsE68xxxM4ddBA1bzHtf6Sowup54zntjv7IVBowggcmdbw6rEqB4x8qXP3AeiiNgTHAEtlgqeqm+UYwxe+OBnJK5htgSN8oe+kI/nEELuuVR2xL+ZHdeYmuyH8K1puL/mlyqMNWFaCF7oOXYs28wbCPMqxvl7GyLivbNRsDMjSgJ/aGxroJv9DP2gpuu4t10YONQBjbN4d+YhVbd5Dwnp7gMLW3n1uv5LV3PGjFTI+BRpSgrMz937SiNXCl9XzZLvT46RYKOLRJOmlI5k5jDtHsWBdiOv0ysDeCxqQnsqABl5clSRLAtFcS2PXx+ovnEeyMMI9JKciZxRR1s4qHx6JivVOrw316g5K1dCYEpb7tVYbopJFYlyNc/ERa3lZVNyxmz/Ur/iFQSNZdfZeTJrsRaj9MTwrEMBu1UoGcd0cZUPJdi9ZQ42nVOQh9DBYpJgNucq4HgKhIfF8jJmSwEtj+MUoNf2/et/QBtnE/ttzXzwUvIWQrPkqFzOGsOHGs8c1vZSldE6ioFVjUkYDVrGhFy1UJGDVlHB1EosX0ORoEfITG0OlMuRveXc3J+mtSp2fGmednUhYa1TeG9+UuUYfJsf2i8ne9ZlmW4hnqVefj40r7XCMtosMQkSJEpqJzoVFz/X4hNaS0uBY5vrv+bKzoky9CTLyG9wRjIOds7aAp5PhRPm5JtyIHS8xG51pqp3EbMCjJ4UWreC4DYIXV00kRh/E5sFOe1ZAOl7Ec6oQ30xsj6SqnOEnrfPHAh7e33KB1peKQ2ETx/XIRC8hJY/d06IRzHg2LciyHXA0PrsGFn3lLe4E8kZXNEdCf8AT65lfJLzydS/Sv1QwhD6cbKDdMcA5P0tv9MXDjaBA0o8GQUF1RBa6eEIqF6oSMUSNPZUjZLw8whAP7VfE38bYHrwtcKCn06Gk80J7ETxphinfimDdCvISSLLTGJyQN3qT/vE0slxa6/hXJeA7LQtTEn1EuGrzkbA84HBQsGhJIdP+W4JpfYs5R/IyFiZW+WU2Cn42CNKP8cfO8rbNTHaohNry4PYnXtrlP1s1Dvk5o52XbyGpdb6hDzE4U88uSgLK2mP7GIwB1M6QOoXjI3YxP3PBlxOQ6A" />
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
				id="__VIEWSTATEGENERATOR" value="A2FEFAA4" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="gJDDJk5d8xEbdauXX9IVu1NDhkvhseyrfCzlevKnjMkG3B++BxRiUpnO1IblkXnL63IQ/g0gIZzwTKjTil1t7KzRZvwLCnVgINBDE+jQLlmmJ/IDK6Br2NndppVNTxSamEpXmKTexEe4h0UB23ZajQXUlxttfVohzGOasabioYOU3Qqw7917Gdd6hIVs0BFEBK6bfnZEJKhHDK7/pU0oqyiUE47TFbITpozEZMhImQBS9HYQzKnCw0Jq5tFT5dZek5CNoxSne5vLcaGmYTi0TbcQCGq5YuwQxHYQjIh3pkl8bF5kVY5JRHR0uPnENyzC9ZJykEx4hbiW4RcQ/L2yS/VR6x0k7FPl967e+a59Vt2Adb26u7Au3MXRpRo40Q4d/kg4aSTT4zKjVN7mB6hQOtLF9v2vUG7/Vnl3t2tEf1+ZWqpF1bMkJOix2m4wfQs4" />
		</div>
		<div>
			<header class="site-header push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>
				<!--menu iteam code -->
				<li class="pushy-link"><a href="#"></a></li>
				<li class="pushy-link"><a href="Dashboard.jsp">Complaint</a></li>
				<li class="pushy-link"><a href="Connection.jsp">Connection</a></li>
				<li class="pushy-link"><a href="Collection.jsp">Collection</a></li>
				<li class="pushy-link"><a href="NewUser.jsp">Create User</a></li>
<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a href="TopUp.jsp">Top-UP</a></li>
				<li class="pushy-link"><a href="BulkBilling.jsp">Bulk-Billing</a></li>
				<li class="pushy-link"><a href="BulkTransaction.jsp">Bulk Transactions</a></li>
<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a href="MyAccount.jsp">My Account</a></li>
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
							'form1', [ 'tctl00$ContentPlaceHolder1$upd',
									'ContentPlaceHolder1_upd',
									'tctl00$ContentPlaceHolder1$msgbox',
									'ContentPlaceHolder1_msgbox' ], [], [], 90,
							'ctl00');
					//]]>
				</script>

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
							<input name="ctl00$ContentPlaceHolder1$txtpkg" type="text"
								id="ContentPlaceHolder1_txtpkg" tabindex="2"
								class="form-control" placeholder="Package Name" />
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
						<div id="ContentPlaceHolder1_upd">



							<div>
								<table
									class="table table-striped table-bordered table-hover fontsize"
									cellspacing="0" rules="all" border="1"
									id="ContentPlaceHolder1_gvcollection"
									style="width: 100%; border-collapse: collapse;">
									<tr>
										<th scope="col">SN</th>
										<th scope="col">VC No</th>
										<th scope="col">Mobile No</th>
										<th scope="col">Amount</th>
										<th scope="col">Package Name</th>
										<th scope="col">Date_Time</th>
										<th scope="col">Action</th>
									</tr>
									<tr>
										<td>1</td>
										<td>7845120369</td>
										<td>9876543210</td>
										<td>200</td>
										<td>Bengali Dohi</td>
										<td>1/2/2017 10:02</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_0"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>7458003210</td>
										<td>8745690010</td>
										<td>250</td>
										<td>Oriya Package</td>
										<td>1/1/2017 10:21</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_1"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl03$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>3</td>
										<td>7115120369</td>
										<td>9876543470</td>
										<td>350</td>
										<td>Hindi Punjabi</td>
										<td>12/31/2016 10:28</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_2"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl04$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>8458963474</td>
										<td>8745101102</td>
										<td>1000</td>
										<td>English Pack</td>
										<td>12/30/2016 10:29</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_3"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl05$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>7894125630</td>
										<td>9876000010</td>
										<td>550</td>
										<td>Mumbai Masala</td>
										<td>12/29/2016 10:29</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_4"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl06$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>6</td>
										<td>7788994455</td>
										<td>8745622210</td>
										<td>600</td>
										<td>Malyalam &amp; Telgu</td>
										<td>12/28/2016 10:31</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_5"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl07$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>7</td>
										<td>9988110101</td>
										<td>9876432111</td>
										<td>100</td>
										<td>Hindi Punjabi</td>
										<td>12/27/2016 10:32</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_6"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl08$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>8</td>
										<td>7896532140</td>
										<td>8745777210</td>
										<td>50</td>
										<td>Hindi Punjabi</td>
										<td>12/26/2016 10:02</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_7"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl09$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>9</td>
										<td>4986320142</td>
										<td>8566311471</td>
										<td>250</td>
										<td>Hindi Punjabi</td>
										<td>11/30/2016 10:21</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_8"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl10$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
									</tr>
									<tr>
										<td>10</td>
										<td>1258562233</td>
										<td>9911152626</td>
										<td>350</td>
										<td>Bengali Dohi</td>
										<td>11/30/2016 10:28</td>
										<td><a id="ContentPlaceHolder1_gvcollection_LnktDetail_9"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvcollection$ctl11$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
										</td>
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
											<div class="col-sm-2"></div>
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

				<script type="text/javascript">
					$(document).ready(function() {
						debugger;

						$('#ContentPlaceHolder1_txttodate').datepicker({
							dateFormat : 'dd-mm-yy'
						});
						$('#ContentPlaceHolder1_txtfromdate').datepicker({
							dateFormat : 'dd-mm-yy'
						});

					});
				</script>


			</div>
<!-- Pushy JS -->

            <script src="assets/js/pushy.min.js"></script>
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css" rel="stylesheet" type="text/css" />
            <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        </div>
    </form>

    <link href="assets/css/circle.css" rel="stylesheet" />
     <%} %>
</body>
</html>
