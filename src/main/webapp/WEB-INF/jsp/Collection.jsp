<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

.nofound{
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
			System.out.print("session not found in collection jsp page");
			response.sendRedirect("lcologin.html?error=Session is Expired!!!");
		} else {
			System.out.print("session found in collection jsp page");
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
			<header class="site-header push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>
					<!--menu iteam code -->
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
				<form action="searchByanyOne.html">
				<input type="hidden"name="user" value="${user }"/>
				
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
								class="form-control" placeholder="Mobille No." />

						</div>

					</div>
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							<input name="pckg" type="text"
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
					<div class="nofound">  ${error} </div>
				</form>
					<div class="col-sm-12">
						<div class="col-sm-12">
							<hr />
							<div style="margin-bottom: 0px">
								<p>
									<b>Total Count : <span id="ContentPlaceHolder1_lblcount"
										style="font-weight: bold;">${fn:length(userList)}</span>
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
										<th scope="col">Invoice Number</th>
										<th scope="col">VC No</th>
										<th scope="col">Customer Name</th>
										<th scope="col">Package Name</th>
										<th scope="col">Package Price</th>
										<th scope="col">Recharge Amount</th>
										<th scope="col">Payment Mode</th>
										<th scope="col">LM Name</th>
										<th scope="col">Payment Status</th>
										<th scope="col">Date_Time</th>
										<th scope="col">Approval</th>
										<th scope="col">Action</th>
									</tr>
								
										<%
									int i=0;
								%>
								<c:forEach items="${userList}" var="user">   
   								<tr>
   									<td> <%= i %></td>
<%--    									<td>${user.Invoice}</td> --%>
<%--    									<td>${user.VC_No}</td> --%>
<%--    									<td>${user.Cust_Name}</td> --%>
<%--    									<td>${user.Current_Pckg}</td> --%>
<%--    									<td>${user.Pckg_Price}</td> --%>
<%--    									<td>${user.Recharge_Amount}</td> --%>
<%--    									<td>${user.Payment_Mode}</td> --%>
<%--    									<td>${user.LM_Id}</td> --%>
<%--    									<td>${user.Payment_Status}</td> --%>
<%--    									<td>${user.trndate}</td> --%>
   									
   									
   									<td>${user.invoice}</td>
   									<td>${user.VC_No}</td>
   									<td>${user.cust_Name}</td>
   									<td>${user.current_Pckg}</td>
   									<td>${user.pckg_Price}</td>
   									<td>${user.recharge_Amount}</td>
   									<td>${user.payment_Mode}</td>
   									<td>${user.LM_Id}</td>
   									<td>${user.payment_Status}</td>
   									<td>${user.trndate}</td>
   									
   									
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
			<link
				href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css"
				rel="stylesheet" type="text/css" />
			<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		</div>

	<link href="assets/css/circle.css" rel="stylesheet" />
	<%
		}
	%>
</body>
</html>
