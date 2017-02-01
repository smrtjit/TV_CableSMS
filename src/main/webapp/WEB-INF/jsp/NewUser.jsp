<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

.p1 {
	font-style: initial;
	font-weight: bold;
	font-size: 16px;
}

table td {
	width: 400px;
}

.btndashborad {
	margin: -68px 450px;
	display: inline-block;
	padding: 6px 200px;
	margin-bottom: 0;
	font-size: 17px;
	font-weight: normal;
	line-height: 1.428571429;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	cursor: pointer;
	border: 1px solid transparent;
	border-radius: 98px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
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
			to Payspot</marquee> </header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
		<ul>

			<!--menu iteam code -->
			<li class="pushy-link"><a href="LCOHome.html?user=<%=request.getParameter("user")%>"
				style="background: OLDLACE; color: black"><h5><%=request.getParameter("user")%></h5> </font></a></li>
			<li class="pushy-link"><a
				href="allLCOCollection.html?user=<%=request.getParameter("user")%>">Collection</a></li>
			<li class="pushy-link"><a
				href="allLCOComplain.html?user=<%=request.getParameter("user")%>">Complaint</a></li>
			<li class="pushy-link"><a
				href="oldConnections.html?user=<%=request.getParameter("user")%>">Connection</a></li>
			<li class="pushy-link"><a
				href="OldUserInfo.html?user=<%=request.getParameter("user")%>">Create
					User</a></li>
			<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
			<li class="pushy-link"><a
				href="lcoTopUp.html?user=<%=request.getParameter("user")%>">Top-UP</a></li>
			<li class="pushy-link"><a
				href="lcoBilling.html?user=<%=request.getParameter("user")%>">Bulk-Billing</a></li>
			<li class="pushy-link"><a
				href="lcoaccountMgmt.html?user=<%=request.getParameter("user")%>">Account
					Management</a></li>
			<li class="pushy-link"><a
				href="lcostock.html?user=<%=request.getParameter("user")%>">Stock</a></li>
			<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
			<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
			<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
			<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
			<li class="pushy-link"><a
				href="LCODetail.html?user=<%=request.getParameter("user")%>">My
					Account</a></li>
			<li class="pushy-link"><a href="logout.html">Log Out</a></li>
		</ul>
		</nav>

		<!-- Site Overlay -->
		<div class="site-overlay"></div>

		<!-- Your Content -->
		<div id="container">
			<!-- Menu Button -->
			<div class="menu-btn">&#9776; Menu</div>
			<button type="button" class="btndashborad btn-pink ">Create
				New User</button>

			<script type="text/javascript">
				//<![CDATA[
				Sys.WebForms.PageRequestManager._initialize(
						'ctl00$ContentPlaceHolder1$ScriptManager1', 'form1', [
								'tctl00$ContentPlaceHolder1$upd1',
								'ContentPlaceHolder1_upd1',
								'tctl00$ContentPlaceHolder1$msgbox',
								'ContentPlaceHolder1_msgbox' ], [], [], 90,
						'ctl00');
				//]]>
			</script>


			<div
				style="margin-left: auto; margin-right: auto; margin-top: -30px; width: 20em">
				<table id="ContentPlaceHolder1_rbselect" class="form-control"
					style="border-style: Double; font-size: Small; width: 300px;">
					<tr>
						<td><span class="radio-inline"><input
								id="ContentPlaceHolder1_rbselect_0" type="radio"
								name="ctl00$ContentPlaceHolder1$rbselect" value="0"
								checked="checked" /><label for="ContentPlaceHolder1_rbselect_0">User
									Registration</label></span></td>
						<td><span class="radio-inline"><input
								id="ContentPlaceHolder1_rbselect_1" type="radio"
								name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
								for="ContentPlaceHolder1_rbselect_1">Show User</label></span></td>
					</tr>
				</table>
			</div>
			<hr />
			<div id="cuser">



				<div class="container">
					<form:form action="register.html" method="get"
						commandName="userForm" autocomplete="off">

						<input type="hidden" name="user"
							value="<%=request.getParameter("user")%>" />
						<div class="row">
							<div class="col-sm-25">
								<div class="col-sm-0"></div>
								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 18px">
										<p class="p1">Designation</p>
									</div>
									<div class="col-sm-8">
										<form:input path="designation" class="form-control"
											placeholder="Please Enter Designation" required="required" />

									</div>
								</div>

								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 18px">
										<p class="p1">Name</p>
									</div>
									<div class="col-sm-8">
										<form:input path="name" class="form-control"
											placeholder="Please Enter Name" required="required" />

									</div>
								</div>
							</div>
							<div class="col-sm-25">
								<div class="col-sm-0"></div>
								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 18px">
										<p class="p1">Email Id</p>
									</div>
									<div class="col-sm-8">
										<form:input path="email_id" class="form-control"
											placeholder="Please Enter Email ID" required="required" />

									</div>
								</div>

								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 18px">
										<p class="p1">Mobile No</p>
									</div>
									<div class="col-sm-8">
										<form:input path="mobile" class="form-control"
											placeholder="Please Enter Mobile No" required="required" />

									</div>
								</div>
							</div>
							<div class="col-sm-25">
								<div class="col-sm-0"></div>
								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 18px">
										<p class="p1">Landline</p>
									</div>
									<div class="col-sm-8">
										<form:input path="landline_no" class="form-control"
											placeholder="Please Enter Landline" />

									</div>
								</div>

								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 18px">
										<p class="p1">Photo</p>
									</div>
									<div class="col-sm-8">
										<input type="file" name="photo"
											id="ContentPlaceHolder1_fuUser" tabindex="10"
											class="form-control" placeholder="Upload file" />

									</div>
								</div>
							</div>
							<div class="col-sm-25">
								<div class="col-sm-0"></div>
								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 38px">
										<p class="p1">Permanent Address</p>
									</div>
									<div class="col-sm-8">
										<textarea path="permanent_add" 
											name="ctl00$ContentPlaceHolder1$txtrmark" rows="2" cols="100"
											id="ContentPlaceHolder1_txtrmark" class="form-control"
											placeholder="Please Enter Permanent Address"
											style="overflow: auto; resize: none">
								</textarea>

									</div>
								</div>

								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 38px">
										<p class="p1">Alternate Address</p>
									</div>
									<div class="col-sm-8">
									<textarea path="corres_add"
											name="ctl00$ContentPlaceHolder1$txtrmark" rows="2" cols="100"
											id="ContentPlaceHolder1_txtrmark" class="form-control"
											placeholder="Please Enter Correspondence Address"
											style="overflow: auto; resize: none">
								</textarea>
										
									</div>
								</div>
							</div>
							<div class="col-sm-25">
								<div class=" col-sm-112">
									<div class="col-sm-113" style="margin-bottom: 18px">
										<p style="margin-left: 29px;" class="p1" >Identity Proof</p>
									</div>
									<div class="col-sm-3" style="width: 27%;" >
										<form:select path="responsibility" class="form-control"
											placeholder="select type">
											<form:options items="${resp }" />
										</form:select>

									</div>

								
									<div class="col-sm-3" style="width: 27%;">
										<form:input path="landline_no" class="form-control"
											placeholder="ID Number" />
									</div>
									<div class="col-sm-3" style="width: 27%;">
										<input type="file" name="id_proof"
											id="ContentPlaceHolder1_FileUpload2" tabindex="8"
											class="form-control" placeholder="Upload file" />

									</div>
								</div>
								
							</div>
							
							<div class="col-sm-25">
								<div class="col-sm-0"></div>
								<div class=" col-sm-112">
									<div class="col-sm-113" style="margin-bottom: 18px">
										<p style="margin-left: 29px;" class="p1">Address Proof</p>
									</div>
									<div class="col-sm-3" style="width: 27%;">
										<form:select path="responsibility" class="form-control"
											placeholder="select type">
											<form:options items="${resp }" />
										</form:select>

									</div>

							

								
									<div class="col-sm-3" style="width: 27%;">
										<form:input path="landline_no" class="form-control"
											placeholder="ID Number" />
									</div>
									<div class="col-sm-3" style="width: 27%;">
										<input type="file" name="id_proof"
											id="ContentPlaceHolder1_FileUpload2" tabindex="8"
											class="form-control" placeholder="Upload file" />

									</div>
								</div>
							</div>
							
							
							<div class="col-sm-25">
								<div class="col-sm-0"></div>
								<div class=" col-sm-6">
									<div class="col-sm-4" style="margin-bottom: 38px">
										<p class="p1">Responsibility</p>
									</div>
									<div class="col-sm-7"  style="margin-bottom: 38px">
										<form:select path="responsibility" class="form-control"
											placeholder="select type">
											<form:options items="${resp }" />
										</form:select>
										
									</div>
									
								</div>
							</div>
							







							

							
							<div class="col-sm-10" style="margin-bottom: 30px">
								<div>
									<div class="col-sm-3"></div>
									<div class="col-sm-6">
										<div style="margin-bottom: 20px">
											<div class="col-sm-6">
												<input type="submit"
													name="ctl00$ContentPlaceHolder1$btnsubmit" value="Add User"
													id="ContentPlaceHolder1_btnsubmit"
													class="btn btn-primary btn-block"
													style="font-weight: bold;" />
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

								</div>
							</div>




							<div class="col-sm-12" style="height: 1px"></div>

						</div>
					</form:form>
				</div>

			</div>

			<div id="suser" style="display: none">
				<p class="p1">Show User Registration</p>
				<div class="row">
					<div id="ContentPlaceHolder1_upd1">


						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_gvuser"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col">SN</th>
									<th scope="col">Emp. ID</th>
									<th scope="col">Username</th>
									<th scope="col">Desig.</th>
									<th scope="col">Full Name</th>
									<th scope="col">Mobile No.</th>
									<th scope="col">Landline No.</th>
									<th scope="col">Email ID</th>
									<th scope="col">Role</th>
									<!-- 										<th scope="col">Action</th> -->
								</tr>
								<%
									int i = 0;
								%>
								<c:forEach items="${userList}" var="user">
									<tr>
										<td><%=i%></td>
										<td>${user.id}</td>
										<td>${user.username}</td>
										<td>${user.designation}</td>
										<td>${user.name}</td>
										<td>${user.mobile}</td>
										<td>${user.landline_no}</td>
										<td>${user.email_id}</td>
										<td>${user.responsibility}</td>
										<!--    									<td><a id="ContentPlaceHolder1_gvuser_LnktDetail_0" -->
										<!-- 											class="btn-primary btn btn-block" -->
										<!-- 											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvuser$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a> -->
										<!-- 										</td> -->
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
															$('#cuser').show();
															$('#suser').hide();
														}
														if (chk == 1) {
															$('#suser').show();
															$('#cuser').hide();

														}
													});
								});

				function radioList() {
					debugger;
					var chk = $('#ContentPlaceHolder1_rbselect').find(
							":checked").val()
					if (chk == 0) {
						$('#cuser').show();
						$('#suser').hide();
					}
					if (chk == 1) {
						$('#suser').show();
						$('#cuser').hide();

					}
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


	<link href="assets/css/circle.css" rel="stylesheet" />
	<%
		}
	%>
</body>
</html>
