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
									for="ContentPlaceHolder1_rbselect_0">Download Bill</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
									for="ContentPlaceHolder1_rbselect_1">Generate Bill</label></span></td>

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
									id="ContentPlaceHolder1_lblStbCount" style="font-weight: bold;">10</span>
							</p>
						</div>
					</div>

					<div class=" table-responsive">
						<div>
								<table class="table table-striped table-bordered table-hover fontsize" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_gvbilling" style="width:100%;border-collapse:collapse;">
			<tr>
				<th scope="col">Sn No</th><th scope="col">Invoice No</th><th scope="col">VC No</th><th scope="col">Mobile No</th><th scope="col">Name</th><th scope="col">Amount</th><th scope="col">Billing</th><th scope="col">DueDate</th><th scope="col">Status</th><th scope="col">Action</th>
			</tr><tr>
				<td>1</td><td>120012</td><td>7845120369</td><td>9876543210</td><td>Harish</td><td>150</td><td>11/21/2016</td><td>11/26/2016</td><td>Paid</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_0" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl02$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>2</td><td>120013</td><td>7458003210</td><td>8745690010</td><td>Mithun Chokorwaty</td><td>50</td><td>11/22/2016</td><td>11/27/2016</td><td>Paid</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_1" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl03$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>3</td><td>120014</td><td>7115120369</td><td>9876543470</td><td>Bhim Rao</td><td>25</td><td>11/23/2016</td><td>11/28/2016</td><td>Paid</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_2" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl04$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>4</td><td>120015</td><td>8458963474</td><td>8745101102</td><td>Subendo</td><td>50</td><td>11/24/2016</td><td>11/29/2016</td><td>Pending</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_3" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl05$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>5</td><td>120016</td><td>7894125630</td><td>9876000010</td><td>Parth Prattim</td><td>75</td><td>11/25/2016</td><td>11/30/2016</td><td>Paid</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_4" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl06$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>6</td><td>120017</td><td>7788994455</td><td>8745622210</td><td>Songeeta</td><td>100</td><td>11/26/2016</td><td>12/1/2016</td><td>Paid</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_5" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl07$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>7</td><td>120018</td><td>9988110101</td><td>9876432111</td><td>Anando Bhai</td><td>500</td><td>12/15/2016</td><td>12/20/2016</td><td>Pending</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_6" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl08$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>8</td><td>120019</td><td>7896532140</td><td>8745777210</td><td>Bipashsha Basu</td><td>50</td><td>12/16/2016</td><td>12/21/2016</td><td>Paid</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_7" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl09$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>9</td><td>120020</td><td>4986320142</td><td>8566311471</td><td>Chandranath Bose</td><td>20</td><td>12/17/2016</td><td>12/22/2016</td><td>Expire</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_8" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl10$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>10</td><td>120021</td><td>1258562233</td><td>9911152626</td><td>Bankim Chatoorjee</td><td>10</td><td>12/18/2016</td><td>12/23/2016</td><td>Pending</td><td>
                                    <a id="ContentPlaceHolder1_gvbilling_LnktDetail_9" class="btn-primary btn btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling$ctl11$LnktDetail&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td colspan="10"><table>
					<tr>
						<td><span>1</span></td><td><a href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvbilling&#39;,&#39;Page$2&#39;)">2</a></td>
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
									id="ContentPlaceHolder1_lblVC_Count" style="font-weight: bold;">${fn:length(BillUser)}</span>
							</p>
						</div>
					</div>
					<div class=" table-responsive">
						<div>
								<table class="table table-striped table-bordered table-hover fontsize" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_gvbilling" style="width:100%;border-collapse:collapse;">
			<tr>
				<th scope="col">Sn No</th>
				<th scope="col">Customer ID</th>
				<th scope="col">Customer Name</th>
				<th scope="col">Mobile No</th>
				<th scope="col">Customer VC No.</th>
				<th scope="col">Last Paid Date</th>
				<th scope="col">Due Date</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
			
			<%
									int i = 0;
								%>
								<c:forEach items="${BillUser}" var="user1">
								
									<tr>
									<form action="stbUpdateLCO.html">
									<td><%=i%></td>
										<td>${user1.username}</td>
										<td>${user1.customer_name}</td>
										<td>${user1.customer_mobile}</td>
										<td>${user1.customer_vc_no}</td>
										<td>${user1.last_recharge_date}</td>
										<td>${user1.con_expiry_date}</td>
										<td>${user1.connection_status}</td>
										<td>
										 <a  class="btn-primary btn btn-block" href="createSingleBill.html?user=${user }&CustId=${user1.username}">
										 Generate Bill</a>
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
