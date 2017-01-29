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
<link href="assets/css/bootstrapcollection.css" rel="stylesheet" />
<!-- Pushy CSS -->
<link rel="stylesheet" href="assets/css/pushy.css" />
<link href='http://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet' type='text/css'>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.css"
	rel="stylesheet" type="text/css">
<style>
html {
	font-family: "roboto", helvetica;
	position: relative;
	height: 100%;
	font-size: 100%;
	line-height: 1.5;
	color: #444;
}

h2 {
	margin: 1.75em 0 0;
	font-size: 5vw;
}

h3 {
	font-size: 1.3em;
}

.v-center {
	height: 100vh;
	width: 100%;
	display: table;
	position: relative;
	text-align: center;
}

.v-center>div {
	display: table-cell;
	vertical-align: middle;
	position: relative;
	top: -10%;
}

.btn {
	font-size: 3vmin;
	padding: 0.25em .75em;
	background-color: #fff;
	border: 1px solid #bbb;
	color: #333;
	text-decoration: none;
	display: inline;
	border-radius: 4px;
	-webkit-transition: background-color 1s ease;
	-moz-transition: background-color 1s ease;
	transition: background-color 1s ease;
}

.btn:hover {
	background-color: #ddd;
	-webkit-transition: background-color 1s ease;
	-moz-transition: background-color 1s ease;
	transition: background-color 1s ease;
}

.btn-small {
	padding: .75em 1em;
	font-size: 0.8em;
}

.modal-box {
	display: none;
	position: absolute;
	z-index: 1000;
	width: 98%;
	background: white;
	border-bottom: 1px solid #aaa;
	border-radius: 4px;
	box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
	border: 1px solid rgba(0, 0, 0, 0.1);
	background-clip: padding-box;
}

@media ( min-width : 32em) {
	.modal-box {
		width: 70%;
	}
}

.modal-box header, .modal-box .modal-header {
	padding: 1.25em 1.5em;
	border-bottom: 1px solid #ddd;
}

.modal-box header h3, .modal-box header h4, .modal-box .modal-header h3,
	.modal-box .modal-header h4 {
	margin: 0;
}

.modal-box .modal-body {
	padding: 2em 1.5em;
}

.modal-box footer, .modal-box .modal-footer {
	padding: 1em;
	border-top: 1px solid #ddd;
	background: rgba(0, 0, 0, 0.02);
	text-align: right;
}

.modal-overlay {
	opacity: 0;
	filter: alpha(opacity = 0);
	position: absolute;
	top: 0;
	left: 0;
	z-index: 900;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.3) !important;
}

a.close {
	line-height: 1;
	font-size: 1.5em;
	position: absolute;
	top: 5%;
	right: 2%;
	text-decoration: none;
	color: #bbb;
}

a.close:hover {
	color: #222;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	transition: color 1s ease;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
var value;
$(function(){

var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

	$('a[data-modal-id]').click(function(e) {
	 value = $(this).attr('value');
	 e.preventDefault();
		
		 $.ajax({  
             type : 'GET', 
             url: 'invoice_service.html?user=<%= request.getParameter("user") %>&value=val',
             data: {
            	 Invoice_no: value
             },
             success: function (data) {
                 console.log('response=', data);
             }
             
             
             
             
<%--              url : "invoice_service.html?user=<%= request.getParameter("user") %>",  --%>
//              data: { value_id: value }		 
            
             
           
   	      });
		 //alert(value);
    $("body").append(appendthis);
    $(".modal-overlay").fadeTo(500, 0.7);
    //$(".js-modalbox").fadeIn(500);
		var modalBox = $(this).attr('data-modal-id');
		$('#'+modalBox).fadeIn($(this).data());
	});  
  
  
$(".js-modal-close, .modal-overlay").click(function() {
    $(".modal-box, .modal-overlay").fadeOut(500, function() {
        $(".modal-overlay").remove();
    });
 
});
 
$(window).resize(function() {
    $(".modal-box").css({
        top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
    });
});
 
$(window).resize();
 
});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>


<style>
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: 80%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s
}

/* Add Animation */
@
-webkit-keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {
	from {top: -300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}

/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.modal-header {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 2px 16px;
}

.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}
</style>
<style type="text/css">
table#table_id {
	background-color: #d5f7ce;
}

.nofound {
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


	<div>
		<header class="site-header push">
			<marquee>Welcome to Payspot</marquee>
		</header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
			<ul>
				<!--menu iteam code -->
				<li class="pushy-link"><a href="#"
					style="background: OLDLACE; color: black"><h5>${user}</h5>
						</font></a></li>
				<li class="pushy-link"><a
					href="allLCOCollection.html?user=${user}">Collection</a></li>
				<li class="pushy-link"><a
					href="allLCOComplain.html?user=${user} ">Complaint</a></li>
				<li class="pushy-link"><a
					href="oldConnections.html?user=<%= request.getParameter("user") %>">Connection</a></li>
				<li class="pushy-link"><a
					href="OldUserInfo.html?user=<%= request.getParameter("user") %>">Create
						User</a></li>
				<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a
					href="lcoTopUp.html?user=<%= request.getParameter("user") %>">Top-UP</a></li>
				<li class="pushy-link"><a
					href="lcoBilling.html?user=<%= request.getParameter("user") %>">Bulk-Billing</a></li>
				<li class="pushy-link"><a
					href="lcoaccountMgmt.html?user=<%=request.getParameter("user")%>">Account
						Management</a></li>
				<li class="pushy-link"><a
					href="lcostock.html?user=<%= request.getParameter("user") %>">Stock</a></li>
				<%-- 				<li class="pushy-link"><a href="BulkTransaction.jsp?user=<%= request.getParameter("user") %>">Bulk Transactions</a></li> --%>
				<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
				<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
				<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a
					href="LCODetail.html?user=<%= request.getParameter("user") %>">My
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
					<input type="hidden" name="user" value="${user }" />

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

							<input name="VC_No" type="text" id="ContentPlaceHolder1_txtvcno"
								tabindex="2" class="form-control" placeholder="VC No." />
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
							<input name="pckg" type="text" id="ContentPlaceHolder1_txtpkg"
								tabindex="2" class="form-control" placeholder="Agent Id" />
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
					<div class="nofound">${error}</div>
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
								cellspacing="0" rules="all" border="1" id="table_id"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col">SN</th>
									<th scope="col" id="Invoice_Number">Invoice Number</th>
									<th scope="col">VC No</th>
									<th scope="col">Customer Name</th>
									<th scope="col">Mobile No</th>
									<th scope="col">Approval ID</th>

									<th scope="col">Agent ID</th>
									<th scope="col">Reference ID</th>
									<th scope="col">Approval Date</th>

									<th scope="col">Recharge Amount</th>
									<th scope="col">Payment Mode</th>
<!-- 									<th scope="col">LM Name</th> -->
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
										<td><%= i %></td>

										<td>${user.invoice}</td>
										<td>${user.VC_No}</td>
										<td>${user.cust_Name}</td>
										<td>${user.cust_mobile}</td>
										<td>${user.approval_ID}</td>
										<td>${user.collecting_Agent}</td>
										<td>${user.refernceId}</td>
										<td>${user.approval_Date}</td>
										<td>${user.recharge_Amount}</td>
										<td>${user.payment_Mode}</td>
<%-- 										<td>${user.LM_Id}</td> --%>
										<td>${user.payment_Status}</td>
										<td>${user.trndate}</td>


										<td>
											<%-- 								<input type="button" name="${user.invoice}" value="Edit"class="btn-primary btn btn-block"  id="" onclick="myBtn();"/> --%>
											<a class="js-open-modal btn" href="#" value="${user.invoice}"
											data-modal-id="popup2"  >Edit</a>

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
							dateFormat : 'yy-mm-dd'
						});
						$('#ContentPlaceHolder1_txtfromdate').datepicker({
							dateFormat : 'yy-mm-dd'
						});

					});
				</script>


		</div>


		<div id="popup2" class="modal-box">
			<header>
				<a href="#" class="js-modal-close close">×</a>
				<h3>Modal Popup</h3>
			</header>
			<div class="modal-body">
				<!--    paste here -->
	<form>
										<input type="hidden" name="user" value="${user }" />
										<div>
											<div class="form-inline marginBottom">
												<div class="md-form">
													<label for="form1" class="">Date :</label> <input
														type="text" style="width: 30%; margin-left: 11%"
														id="form1" placeholder="Complaint Type"
														class="form-control input1"> <label for="form1"
														class=""> Invoice :</label> <input type="text"
														style="width: 30%; margin-left: 6%" id="form1"
														placeholder="${cust_invoice.invoice_No }" class="form-control input1">

												</div>
											</div>
											<br>
											<div class="form-inline marginBottom">
												<div class="md-form">
													<label for="form1" class="">From :</label> <input
														type="text" style="width: 30%; margin-left: 10%"
														id="form1" placeholder="Complaint Type"
														class="form-control input1"> <label for="form1"
														class="">Amount :</label> <input type="text"
														style="width: 30%; margin-left: 6%" id="form1"
														placeholder="Complaint Type" class="form-control input1">

												</div>
											</div>
											<br>
											<div class="form-inline marginBottom">
												<div class="md-form">
													<label for="form1" class="">Service TAX :</label> <input
														type="text" style="width: 30%; margin-left: 6%" id="form1"
														placeholder="Complaint Type" class="form-control input1">
													<label for="form1" class="">VAT :</label> <input
														type="text" style="width: 30%; margin-left: 8%" id="form1"
														placeholder="Complaint Type" class="form-control input1">

												</div>
											</div>
											<br>
											<div class="form-inline marginBottom">
												<div class="md-form">
													<label for="form1" class="">Amusement TAX :</label> <input
														type="text" style="width: 30%; margin-left: 3%" id="form1"
														placeholder="Complaint Type" class="form-control input1">
													<label for="form1" class="">Other TAX :</label> <input
														type="text" style="width: 30%; margin-left: 4%" id="form1"
														placeholder="Complaint Type" class="form-control input1">

												</div>
											</div>
											<br>
											<div class="form-inline marginBottom">
												<div class="md-form">
													<label for="form1" class="">IS TDS Deducted :</label> <input
														type="text" style="width: 30%; margin-left: 3%" id="form1"
														placeholder="Complaint Type" class="form-control input1">
													<label for="form1" class="">Recive Amount :</label> <input
														type="text" style="width: 30%; margin-left: 1%" id="form1"
														placeholder="Complaint Type" class="form-control input1">

												</div>
											</div>
											<br>
											<div class="form-inline marginBottom">
												<div class="md-form">
													<label for="form1" class="">Recived Via :</label> <input
														type="text" style="width: 30%; margin-left: 6%" id="form1"
														placeholder="Complaint Type" class="form-control input1">
													<label for="form1" class="">Reference ID :</label> <input
														type="text" style="width: 30%; margin-left: 2%" id="form1"
														placeholder="Complaint Type" class="form-control input1">

												</div>
											</div>
											<br>
											<div class="form-inline marginBottom">
												<div class="md-form">
													<label for="form1" class="">Remark :</label> <input
														type="text" style="width: 30%; margin-left: 8%" id="form1"
														placeholder="Complaint Type" class="form-control input1">
													<div class="col-sm-2  pull-right">
														<input type="submit" name="#" value="Submit" id=""
															tabindex="12" class="btn-danger btn btn-block" />
													</div>
												</div>
											</div>
											<br>

										</div>

									</form>
							
							</div>
			</div>
			<footer>
				<a href="#" class="btn btn-small js-modal-close">Close</a>
			</footer>
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
