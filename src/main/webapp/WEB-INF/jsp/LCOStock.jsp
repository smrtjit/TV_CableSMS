<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			System.out.println("session not found");
			response.sendRedirect("lcologin.html?error=Session is Expired!!!");
		} else {
			System.out.println("session found");
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


<script type="text/javascript">
// function madeAjaxCall(){
//  $.ajax({
//   type: "get",
//   url: "http://localhost:8080/TV_CableSMS/updateVCStatus.html",
//   cache: false,    
//   data:'VC_No=' + $("#VC_No").val() + "&vcStatus;=" + $("#vcStatus").val() + "&user;=" + $("#user").val(),
//   success: function(response){
// 	  var modelAttributeValue = '${vcList}';
// 	  alert(modelAttributeValue);
//    $('#result').html("");
//    var obj = JSON.parse(response);
//    $('#result').html(modelAttributeValue);
//   },
//   error: function(){      
//    alert('Error while request..');
//   }
//  });
// }


// $("#theForm").ajaxForm({url: 'updateVCStatus.html', type: 'get'})
</script>

	<div>
		<header class="site-header push">
			<marquee>Welcome to Payspot</marquee>
		</header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
			<ul>

				<li class="pushy-link"><a href="#"
					style="background: OLDLACE; color: black"><h5>${user}</h5>
						</font></a></li>
				<li class="pushy-link"><a
					href="allLCOCollection.html?user=${user}">Collection</a></li>
				<li class="pushy-link"><a
					href="allLCOComplain.html?user=${user} ">Complaint</a></li>
				<li class="pushy-link"><a
					href="oldConnections.html?user=${user}">Connection</a></li>
				<li class="pushy-link"><a
					href="OldUserInfo.html?user=<%=request.getParameter("user")%>">Create
						User</a></li>
				<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a href="lcoTopUp.html?user=${user}">Top-UP</a></li>
				<li class="pushy-link"><a href="lcoBilling.html?user=${user}">Bulk-Billing</a></li>
				<li class="pushy-link"><a
					href="lcoaccountMgmt.html?user=${user}">Account Management</a></li>
				<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
				<li class="pushy-link"><a href="lcostock.html?user=${user}"">Stock</a></li>
				<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
				<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a href="LCODetail.html?user=${user}">My
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


			<div class="row">
				<div
					style="margin-left: auto; margin-right: auto; margin-top: -10px; width: 25em">

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
									id="ContentPlaceHolder1_lblStbCount" style="font-weight: bold;">${fn:length(stbList)}</span>
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
									<!-- 										<th scope="col">&nbsp;</th> -->
									<!-- 										<th scope="col">&nbsp;</th> -->
								</tr>

								<%
									int i = 0;
								%>
								<c:forEach items="${stbList}" var="user1">
								
									<tr>
									<form action="stbUpdateLCO.html">
									<input type="hidden" name="user" value="${user}"/>
									<input type="hidden" name="STB" value="${user1.stb_box_no}"/>
										<td><%=i%></td>
										<td>${user1.stb_box_no}</td>
										<td>${user1.company}</td>
										<td>${user1.mso}</td>
										<td>${user1.manufacture_date}</td>
										<td>${user1.exp_date}</td>
										<td>${user1.current_status}</td>

										<td>
										<select name="stbStatus">
										<option value="Live">Live</option>
										<option value="Faulty">Faulty</option>
										<option value="OffLine">OffLine</option>
										</select>
										<input type="submit"
											name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit"
											value="Edit" class="aspNetDisabled btn btn-primary" />
										</td>

										<%
											i++;
										%>
										</form>
									</tr>
									
								</c:forEach>


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
									id="ContentPlaceHolder1_lblVC_Count" style="font-weight: bold;">${fn:length(vcList)}</span>
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
<!-- 									<th scope="col">&nbsp;</th> -->
<!-- 									<th scope="col">&nbsp;</th> -->
								</tr>
								
									
									
								<%
									int i1 = 0;
								%>
								<c:forEach items="${vcList}" var="data">
								<form name="theForm" action="updateVCStatus.html">
								<input type="hidden" name="user" value="${user}"/>
									<tr>
									<input type="hidden" name="VC_No" value="${data.vc_no}"/>
										<td><%=i1%></td>
										<td>${data.vc_no}</td>
										<td>${data.company}</td>
										<td>${data.mso}</td>
										<td>${data.manufacture_date}</td>
										<td>${data.exp_date}</td>
										<td>${data.current_status}</td>

										<td>
										<select name="vcStatus">
										<option value="Live">Live</option>
										<option value="Faulty">Faulty</option>
										<option value="OffLine">OffLine</option>
										</select>
										<input type="submit"value="Submit" 
										class="aspNetDisabled btn btn-primary" />
										</td>

										<%
											i1++;
										%>
										
									</tr>
									</form>
								</c:forEach>
								
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
															$('#stb').show();
															$('#vc').hide();

														}
														if (chk == 1) {

															$('#stb').hide();
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
	<%
		}
	%>
</body>
</html>
