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
</style>

</head>
<body
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
	<form method="post" action="./dashboard.jsp" id="form1">
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
			src="WebResource.axd?d=pynGkmcFUV13He1Qd6_TZKFFXDUgfU-UBi18bCzN2i8L8PXrGrr6FjdHQr3cBNEzRsJNDUE1GktavLtDxtDl1Q2&amp;t=636104529900000000"
			type="text/javascript"></script>


		<script
			src="/ScriptResource.axd?d=NJmAwtEo3Ipnlaxl6CMhvl5RPGwiZk4IhiUb_fBMxxy3w24mdz1bRqpu2Tx6WXC7wzgLEKx2Uze1RGB4TIdZBCRYWsnky0yqlji6UbT6UMsMxwU8nE9xa4WdNI3ZYgtVUABIuH3yscl-YuTyXVnXXNmgZpthxma-XTavzibu-Vw1&amp;t=ffffffffc45b034e"
			type="text/javascript"></script>
		<script
			src="/ScriptResource.axd?d=dwY9oWetJoJoVpgL6Zq8OH0Sw-M4qzmZwT9bsg3n62-gOKiVwa9UCtjFUFX-MpMNFolFCkukdkkG0wDCoiXn4NuwfsJz-AWKjjH8hirPHQw006vVvWwxHha230iF_qCTZZzNf-bCZKOAMjMSmxWMQ9iQPtOU8werOASQNLJTDAU1&amp;t=ffffffffc45b034e"
			type="text/javascript"></script>
		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="B543B226" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="PErdKhkNKqEhU+P9L8R7/TDKy708BFDxxCu9KB5ljoPue6KRMmHo3pNeQsG6hGASEPzwjaOhGrwDaeJsehiK3vbGEa6NGyftyQP2aXEpwHcIREWhlnQS3JIhLfqEXuy6ICBy/06TMWCtqiyTj9z/JqQD0noEaGBGTK78n3GnIN7wFRQ0NMA5A0EdLvZ97BPgclBzrRfwQr8uTXPO0dNIhe+WKdDskF5pR9UKGY/CfF1XcDyGWYXKi4A69uwBDRcVA9Ut0MKH65jj1miweGJd9FoHxHU8jZU8QfR/1k7IreCfcPP/+CwZXOw8e78WMvCq0BbXvMU0ig7U63cukE6as4B//eJrORMOesArvgbcwUZmPubVuJuqNNAc0DzVzDO6VpDuyrKWqLHXXuTMPXfpFGYm9CLozfq1GVMf0mbzOyra6oWMhs496T0pMEsH0xzn/OXNwdVHOPAbLJAd5LjUNPNEhcK6jB6NAQvcDasujLUB3zIIp9+ObGo+vOUPqxZ/tPJqQWGxFru+WlJkYqfloQKP6bgaT/PoXyVxk2Ivujj5ZttRrxjoAU5uRlPW/J4fJFOLGuVv7nfDcOng8mbTLr/VdjXA09pqpAEr22Jau9pIL/l5hlqhpWK/gQSbPMpd6HKSTj0DNBDqfbQVC/eiHsTAg4PYrd4QIszxRMkzgcp3YvasSALFcWOq39POy/y166qio9otKOHT/lnxStWUPQzqpDeVx1PX7oQrIW1kuGJ0t/To0Zn1rPMKmBn04lYWLqmRfLYlC+P+A4Ys1Z0UDWwUlOG5qBG2av3C5YB/zEMDFi0BfbsIUDAW0BwHIFcWHu/5z63Lx+PzjBkD4JVuCxW9GUQGTkKN6Wxv1x0VKHIT7jcDwY8P5uWiXRmiRt6AEIhapdv4ZDHqONdBiKKs2EKLt6XiW0i0AfvXpMpUpb4fvYFx2Ihiv6nCK5b+qR9I3Y6en7sneeiFx5KxgnbFFPGmnyp2RESHqgbbVeYuCrGEXNMCgCHOf5x1wrUcNEThDnRpA12VK0PmndtJ3sKvmsbvizqwDsiZfu+/a3AitsOmbTQTubLuJOHgTRVx+QI1jD1g//KIVncc/pOaZS4BeTRBgyAdD65TJN2TYFMWRDTE+1PguogNbPCYV5pX7vkpvk/5L21SfkphICq3xuRB5jAyABnBVsWcVb341eL/QVfOEyZQjJ/O+3T0Ao781frhU0favHd6amp8PTznSF8nPNKOvS4A7pI/JlBaADyAPdFYGKY2RY4sneWgd0VsOl42qmHOFa+1gb6JzA2EtOSKhPXxONdvpPELCQ+KhuZ88RajiJALXB/ciU+Wlm+o9i4vcyQnlCYB2oXXsVEQWcZAMii6dYRI7ks3g3GpHBgHL1SwUHW84CNQeL/mx1DctBLW5wR5NlTlcHYr0NbiB2rGv+HLFkQS+lE/UMjZxmbBjcp8wgje5Wzcii4f0bOPWgWH" />
		</div>
		<div>
			<header class="site-header push"> <marquee>Welcome to Cable TV Show ${user} </marquee> </header>
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
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$abc', 'form1', ['tctl00$ContentPlaceHolder1$upd1','ContentPlaceHolder1_upd1','tctl00$ContentPlaceHolder1$msgbox','ContentPlaceHolder1_msgbox','tctl00$ContentPlaceHolder1$UpdatePanel1','ContentPlaceHolder1_UpdatePanel1'], [], [], 90, 'ctl00');
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
										style="font-weight: bold;">27</span>
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
											<th scope="col">Complaint_ID</th>
											<th scope="col">Customer_ID</th>
											<th scope="col">Customer_Name</th>
											<th scope="col">Customer_Address</th>
											<th scope="col">Customer_Mobile</th>
											<th scope="col">Type of Complaint</th>
											<th scope="col">Current Status</th>
											<th scope="col">Action</th>
											<th scope="col">Action</th>
										</tr>
										<tr>
											<td>1</td>
											<td>13016</td>
											<td>9559404556</td>
											<td>Ankit</td>
											<td>Flat No. 16/3 Vardhman Block-5, South Bengal 713144</td>
											<td>9559404556</td>
											<td>Not Working</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_0"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_0"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>2</td>
											<td>13014</td>
											<td>9559404556</td>
											<td>Ankit</td>
											<td>Flat No. 16/3 Vardhman Block-5, South Bengal 713144</td>
											<td>9559404556</td>
											<td>STB Problem</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_1"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl03$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_1"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl03$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>3</td>
											<td>13004</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>Bad Singnal</td>
											<td>HOLD</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_2"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl04$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_2"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl04$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>4</td>
											<td>13002</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>Bad Singnal</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_3"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl05$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_3"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl05$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>5</td>
											<td>13001</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>STB Problem</td>
											<td>RESOLVED</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_4"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl06$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_4"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl06$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>6</td>
											<td>13000</td>
											<td>8566311471</td>
											<td>Chandranath Bose</td>
											<td>Flat No. 16/2 Vardhman Block-1, West Bengal 713144</td>
											<td>8566311471</td>
											<td>Channel Not Available</td>
											<td>OPEN</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_5"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl07$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_5"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl07$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>7</td>
											<td>22</td>
											<td>4785487891</td>
											<td>Asile Babu Ghosh</td>
											<td>Bunglow No. 15 Stree No. 10 Howrah, Kolkata</td>
											<td>4785487891</td>
											<td>Bad Singnal</td>
											<td>PENDING</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_6"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl08$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_6"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl08$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>8</td>
											<td>20</td>
											<td>5478569320</td>
											<td>Babu Ghosh</td>
											<td>Bunglow No. 120 Stree No. 3 Howrah, Kolkata</td>
											<td>5478569320</td>
											<td>No Signal</td>
											<td>ESCLATED MSO</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_7"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl09$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_7"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl09$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>9</td>
											<td>19</td>
											<td>9875526901</td>
											<td>Aishwarya Roi</td>
											<td>Flat No. 16/10 Vardhman Block-1, West Bengal 713144</td>
											<td>9875526901</td>
											<td>Wrong Package</td>
											<td>RESOLVED</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_8"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl10$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_8"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl10$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td>10</td>
											<td>18</td>
											<td>4785487891</td>
											<td>Asile Babu Ghosh</td>
											<td>Bunglow No. 15 Stree No. 10 Howrah, Kolkata</td>
											<td>4785487891</td>
											<td>Remote Not Working</td>
											<td>RESOLVED</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnkEdit_9"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl11$LnkEdit&#39;,&#39;&#39;)">Edit</a>
											</td>
											<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_9"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl11$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
										</tr>
										<tr>
											<td colspan="10"><table>
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
				<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css" rel="stylesheet" type="text/css" />
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
            $('#ContentPlaceHolder1_txtactiondate').datepicker({ dateFormat: 'dd-mm-yy' });


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

	<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
