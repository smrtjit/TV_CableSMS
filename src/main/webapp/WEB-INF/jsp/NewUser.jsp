<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<form method="post" action="./user.aspx" id="form1"
		enctype="multipart/form-data">
		<div class="aspNetHidden">
			<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
			<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
				value="" /> <input type="hidden" name="__VIEWSTATE"
				id="__VIEWSTATE"
				value="CcxMvwnuZU7qnJbk9eABcVZeT1pAZThOe6BeMdheFIG7k6woEfM4cCyHMiBUAJzxkjFQZI7dM8meafyqP7ntqwVI+czD36u1I9+Tchg9kBwZvJq1S8N2uOGmZxGqrAWeCpZj5jXJRF4fjCdP/10XnZhktgC10WZX1oVH/ZiDCCZbGQ3NL5CjVlzH8EqESXKW0gyIIIdaAq6IBFdvCLhrEzhQBKSgUFfXgEn3/jOyaMu2AJn+jTQS46M0CxAD4yufju/vQ33V8RrcvlmTyd3GIgy+UtJPRKsDtlYC8HkuivaJElTS0jdkwCuPTAnetKSnExB5u8HwyW+R2+2e5Q0W23PPI4GtGYpHtQD69QIYJnyNrq8v6wtG0Yjo3vbuNxenxEBc0hwXAd1N05qEXohs7Rjr5O3gO33fp6BLa1V6uhUQzAPRxcn7W9SbmW4EQizvgy0Dg4FDhaOuBlcrzYPhut0fEIIQpT8At17G5h6qcbTWERmhwT5c605x5VgXYaxrxcVgow0gM1FT+21xJTOVIzYSfP/QxSbAjcXMVqVFpe5OVlQL87ML+6GTYa75KVlqfHrJ+7SlkpjEbCds5/xO71Fu4U2j7MWP5dpMYTrQTSPIYfzbUeRIBjG1vfZhUO0gZDgYeYx8NyF60PsAFvs/AwDrgo0i7ZNEJmWo5e7iUQWMwAnWP/P7H8G8RWchL7BpOR2WVGm81txHYOjkgVoGZ0gVNvV5PaYXhHUodc79V/x04gEelEqLYreL931oIrCkhGYp6PqSc6XkujIJTd6qfIPkLBJv9anWGoxAHxYH0ZIYy9y7nPo4yquEPUKAdAEWx1wdr/dn0Ht+wru3bUW3uGq15CQsOx2aF49Vzp43qwLD2EnHH3ga43OOCHkuSi4qeJNrRNpurki7lzA0Nq7BDmiPPu1D/jFPV/7J8WjEULZtJafpz3Iw08Zcg0X7AN40pAb0hF88aW210z35yTrfmv4MFZni5wjX4DeHjsfZqhKNG08UQf9RmkStSaMmF0uvYuDG62OCF0G4bP2RxXQtbSXtqRNuDwZ0Di1mwIQllNqLnHYQkvUVSvO+4HCntfjZvEcRwY04fXw+DdRvKTlxuROKc6l3PmA7eXPUlZ2zwBakuBVVvAoUl3GnQwEbYTnBM/4y9ikRx204YD0M1XkKEJ+vS4RLQdzIKb0p+iILVN1S5M9nIHvtHWXHheKT6X3dUfsupuUaIvgye+IwLPsjgEllq/WbOkoeE4QtEVhK/EzN3tEhHu06ZMRJWS8h4C+tfrWvlezZtW7d+m+Dhv157UeOidxzjc+abWil9vh8Kh9ntXHwv4iCX1sYX02m89PoyBUYZethDgNUiGPiYFzr2sClnA71ICq1N/xev9WTH/5At/zpojc2LBX3Z3OT7qUnRkmg5YinvLOO8nhQdEDbO8ezxlgR7IBRtUbYbuug88v8X03L9IJbWd7RFwLZuRBriu56iF6BmXPzgWMud+9B25m0deRYaY9nhPoOFD0pNx6XQoJnfCt05nL0UCWafekHF2nSznuxXo1R30Q80Da1iYENQ3dEC9JLIKmo9QiBSvY6Db6vuurcQN8dFm+7AbMxp/ohNn6uJglJv/sjDwol3bqDk51leVj2ynONHxRsZjuxIEPqc9uU09HoMGXqkqdeQ3yhslRyZLd7B9JinCmYtISj7WqXzbpgeEiIeK14DI4kWPCLsuGawtObV4b+UD4hng3vAIbeozFLDGk8fpTMo+XpI3O2jUp5HZtM+NkUQZstGwLyN3k298pQNfxz8Crmp2CdcIPiN4Htqvp4r7v3ySqz6Lx/62b+q7vFMpbBgg8ewC8S5MRc3RHYeuR2KS9Rdz1yv8JnwCbNxAD0Kub0zHgDlzlKFPDT2S0vfJL0p4LuTiXSdt9rsDjQyZO+WQDUGc/5QbAqV+fjbH4WS+TBXfQTzha1su91BqYGjfkVOgvsJ6XRE9vrnVolHDf+0QXopN4O0n1XVFXCK9+qYkgRUlh7z+orhTRenyN/RQHS8dZG2YsGXLjp1ySeNoB+eZNPyuf+YgVKHMRWHmj8XKCbCXdvMMCdu84H74tKvFlWyScb6aWOmS2zbXUVSBF6ZMZo29yOspE6EzAHJa7KRFd7bTjc15RJeqTrnG0ZQSzFOxoH2r/vT+IjadZd+GI3ymkPSJvRNFEEobac0KmID+EMt0fZqBmxTunGFj8wJcIVcanSG6xv/fVyzjrD8kOWzDoEQ/G672phafKXNLfV0M4MRw==" />
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
				id="__VIEWSTATEGENERATOR" value="38D9001F" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="WvyRtFj/rlMJoAt4Cnhy6rQ7xtl/RvNkjeChpl/9nGWvNcYfK4a4qMMLLGAXut9X3ti/fr46fzt9xSrmlk8Zrrt5Oof74ytZXnQRYuDd/ZUaUsL8pjPM2xhlhdh1/8RZEgOgR+3ysPhmxiMoOHUK2qrRAin817kJPOCpPNh9QESwHGTEC8a9HC/QblzM3VXcNJUoYWx87ubPAL1yi5OgMQoJMW8FF3WbhM76P53X/eXrwommYIk52NzI5bHiTUOzVd3J5inZrmsG4fa1iwvF9tVzhGBQsCoyTjyeslNh9d1AG7I6WBn/QsXns9bPeLTfAsyG15Db7YK4MqbkdzZEQ/hSOE/8NNu4oOijlHkEBIYlq24fF3k+TVdfXxeJnXs+zzHzLl5NYlYw9Skg9ycYiyxWPMQ800Ug53m5Elpd/1qkqvfieKBy7s79yJ6iDf03sqi+cxdWeMfBDofVCf2ZbLe1OSHn6UdfC3gjuzNXaxkzhcWtgY+NwnQA71UNxTFW9d8dWcrfWh5MeiIf2a4J9cB0ypsrlAzg1rwM8oj1Dzw26ENpm+b4kY+/7kSJQHb7TF0vjgGARVRX2v4/sy9ETg==" />
		</div>
		<div>
			<header class="site-header push"> <marquee>Welcome
				to Cable TV Show</marquee> </header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
			<ul>

				<!--menu iteam code -->
				<li class="pushy-link"><a
					href="#?user=<%=request.getParameter("user")%>"
					style="background: OLDLACE; color: black"><h5><%=request.getParameter("user")%></h5>
						</font></a></li>
				<li class="pushy-link"><a
					href="Collection.jsp?user=<%=request.getParameter("user")%>">Collection</a></li>

				<li class="pushy-link"><a
					href="Dashboard.jsp?user=<%=request.getParameter("user")%> ">Complaint</a></li>
				<li class="pushy-link"><a
					href="Connection.jsp?user=<%=request.getParameter("user")%>">Connection</a></li>
				<li class="pushy-link"><a
					href="OldUserInfo.html?user=<%=request.getParameter("user")%>">Create User</a></li>
				<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a
					href="TopUp.jsp?user=<%=request.getParameter("user")%>">Top-UP</a></li>
				<li class="pushy-link"><a
					href="BulkBilling.jsp?user=<%=request.getParameter("user")%>">Bulk-Billing</a></li>
				<li class="pushy-link"><a
					href="BulkTransaction.jsp?user=<%=request.getParameter("user")%>">Bulk
						Transactions</a></li>
				<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
				<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
				<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a
					href="LCODetail.html?id=<%=request.getParameter("user")%>">My
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


				<div
					style="margin-left: auto; margin-right: auto; margin-top: -30px; width: 20em">
					<table id="ContentPlaceHolder1_rbselect" class="form-control"
						style="border-style: Double; font-size: Small; width: 300px;">
						<tr>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_0" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="0"
									checked="checked" /><label
									for="ContentPlaceHolder1_rbselect_0">User Registration</label></span></td>
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
						<div class="row">

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Designation</p>
									</div>
									<div class="col-sm-6">
										<input name="ctl00$ContentPlaceHolder1$txtdesignation"
											type="text" id="ContentPlaceHolder1_txtdesignation"
											tabindex="1" class="form-control"
											placeholder="Please Enter Designation" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Name</p>
									</div>
									<div class="col-sm-6">
										<input name="ctl00$ContentPlaceHolder1$txtname" type="text"
											id="ContentPlaceHolder1_txtname" tabindex="2"
											class="form-control" placeholder="Please Enter Name" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Email Id</p>
									</div>
									<div class="col-sm-6">
										<input name="ctl00$ContentPlaceHolder1$txtemailid" type="text"
											id="ContentPlaceHolder1_txtemailid" tabindex="3"
											class="form-control" placeholder="Please Enter Email id" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Mobile No.</p>
									</div>
									<div class="col-sm-6">
										<input name="ctl00$ContentPlaceHolder1$txtmobile" type="text"
											id="ContentPlaceHolder1_txtmobile" tabindex="4"
											class="form-control" placeholder="Please Enter Mobile Number" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Landline</p>
									</div>
									<div class="col-sm-6">
										<input name="ctl00$ContentPlaceHolder1$txtlandline"
											type="text" id="ContentPlaceHolder1_txtlandline" tabindex="5"
											class="form-control" placeholder="Please Enter Landline" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Correspondence Address</p>
									</div>
									<div class="col-sm-6">
										<input name="ctl00$ContentPlaceHolder1$txtcadd" type="text"
											id="ContentPlaceHolder1_txtcadd" tabindex="6"
											class="form-control"
											placeholder="Please Enter Correspondence Address" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Permanent Address</p>
									</div>
									<div class="col-sm-6">
										<input name="ctl00$ContentPlaceHolder1$txtpadd" type="text"
											id="ContentPlaceHolder1_txtpadd" tabindex="7"
											class="form-control"
											placeholder="Please Enter Permanent Address" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Identity Proof</p>
									</div>
									<div class="col-sm-6">
										<input type="file"
											name="ctl00$ContentPlaceHolder1$FileUpload2"
											id="ContentPlaceHolder1_FileUpload2" tabindex="8"
											class="form-control" placeholder="Upload file" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Address Proof</p>
									</div>
									<div class="col-sm-6">
										<input type="file"
											name="ctl00$ContentPlaceHolder1$FileUpload1"
											id="ContentPlaceHolder1_FileUpload1" tabindex="9"
											class="form-control" placeholder="Upload file" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Photo</p>
									</div>
									<div class="col-sm-6">
										<input type="file" name="ctl00$ContentPlaceHolder1$fuUser"
											id="ContentPlaceHolder1_fuUser" tabindex="10"
											class="form-control" placeholder="Upload file" />
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3">
										<p class="p1">Responsibility</p>
									</div>
									<div class="col-sm-6">
										<select name="ctl00$ContentPlaceHolder1$ddlrespo"
											id="ContentPlaceHolder1_ddlrespo" tabindex="11"
											class="form-control" placeholder="Responsibility">
											<option value="Select">Select</option>
											<option value="Collection">Collection</option>
											<option value="Local Fault Repair">Local Fault
												Repair</option>
											<option value="Other">Other</option>

										</select>
									</div>

								</div>
							</div>

							<div class="col-sm-10" style="margin-bottom: 10px">
								<div>
									<div class="col-sm-3"></div>
									<div class="col-sm-6">
										<div style="margin-bottom: 20px">
											<div class="col-sm-6">
												<input type="submit"name="ctl00$ContentPlaceHolder1$btnsubmit" value="Add User"	id="ContentPlaceHolder1_btnsubmit"
													onclick="form.action='create.html';"
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
										<th scope="col">Action</th>
									</tr>
									<%
									int i=0;
								%>
								<c:forEach items="${userList}" var="user">   
   								<tr>
   									<td> <%= i %></td>
   									<td>${user.id}</td>
   									<td>${user.username}</td>
   									<td>${user.designation}</td>
   									<td>${user.name}</td>
   									<td>${user.mobile}</td>
   									<td>${user.landline_no}</td>
   									<td>${user.email}</td>
   									<td>${user.responsibility}</td>
   									<td><a id="ContentPlaceHolder1_gvuser_LnktDetail_0"
											class="btn-primary btn btn-block"
											href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvuser$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
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
																$('#cuser')
																		.show();
																$('#suser')
																		.hide();
															}
															if (chk == 1) {
																$('#suser')
																		.show();
																$('#cuser')
																		.hide();

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
	</form>

	<link href="assets/css/circle.css" rel="stylesheet" />
	<%
		}
	%>
</body>
</html>
