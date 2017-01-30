<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>

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

<!-- //////////////////////////////////////////////////start for Modal Box//////////////////////////////////////////////////////////////////// -->


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
	font-size: 2.5vmin;
	padding: 0.25em 0.75em;
	background-color: #fff;
	border: 1px solid #bbb;
	/*   color: #333; */
	text-decoration: none;
	display: inline;
	background-color: #428bca;
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
	width: 100%;
	background: white;
	border-bottom: 1px solid #aaa;
	border-radius: 4px;
	box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
	border: 1px solid rgba(0, 0, 0, 0.1);
	background-clip: padding-box;
}

@media ( min-width : 32em) {
	.modal-box {
		width: 75%;
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
/* 	padding: 2em 1.5em; */
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


.detail{
width: 100%;
text-align: right;
}
</style>


<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
	$(function() {

		var appendthis = ("<div class='modal-overlay js-modal-close'></div>");
		
		$('a[data-modal-id]').click(function(e) {
			var invoice = $(this).attr('value');
// 			alert(invoice);
			 $.ajax({  
            type : 'GET', 
            url: 'printBill.html',
            data: {
            	'invoice': invoice,
            	'user': ${user}
            },
            success: function (data) {
            	 alert("hello: "+data.Detail.Total_Amount);
            }
        });
			document.getElementById("inid").innerHTML ="Invoice Number: "+invoice;
			e.preventDefault();
			$("body").append(appendthis);
			$(".modal-overlay").fadeTo(500, 0.7);
			//$(".js-modalbox").fadeIn(500);
			var modalBox = $(this).attr('data-modal-id');
			$('#' + modalBox).fadeIn($(this).data());
		});

		$(".js-modal-close, .modal-overlay").click(function() {
			$(".modal-box, .modal-overlay").fadeOut(500, function() {
				$(".modal-overlay").remove();
			});

		});

		$(window).resize(function() {
			$(".modal-box").css({
				top : ($(window).height() - $(".modal-box").outerHeight()) / 2,
				left : ($(window).width() - $(".modal-box").outerWidth()) / 2
			});
		});

		$(window).resize();

	});
</script>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
	_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
	_gaq.push([ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
<!-- //////////////////////////////////////////////////End for Modal Box//////////////////////////////////////////////////////////////////// -->
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
					style="background: OLDLACE; color: black"><h5>${user}</h5> </font></a></li>
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
			<button type="button" class="btnc btn-pink ">Bulk Billing </button>


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
							
							<p>
								Total No.of Data Uploaded : <span
									id="ContentPlaceHolder1_lblStbCount" style="font-weight: bold;">${count}</span>
							</p>
						</div>
					</div>

					<div class=" table-responsive">
						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_gvbilling"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col">Sn No</th>
									<th scope="col">Invoice No</th>
									<th scope="col">VC No</th>
									<th scope="col">Mobile No</th>
									<th scope="col">Name</th>
									<th scope="col">Amount</th>
									<th scope="col">Billing</th>
									<th scope="col">DueDate</th>
									<th scope="col">Action</th>
								</tr>

								</tr>
								<c:forEach items="${BillsDetail}" var="bill" varStatus="itr">

									<tr>
										<form action="stbUpdateLCO.html">
												<td>${offset + itr.index +1 }</td>
											<td>${bill.invoice_No}</td>
											<td>${bill.vc_No}</td>
											<td>${bill.user_Id}</td>
											<td>${bill.user_Name}</td>
											<td>${bill.total_Amount}</td>
											<td>${bill.billing_Date}</td>
											<td>${bill.dueDate}</td>
											<%-- 										<td>${user1.connection_status}</td> --%>
											<td>
												<!-- 										 <a  class="btn-primary btn btn-block" href="#"> -->
												<!-- 										Download/View Bill</a> -->
												 <a class="btn-primary btn btn-block" href="#" value=${bill.invoice_No}
												data-modal-id="popup2">Download/View Bill</a>
											</td>

											
										</form>
									</tr>

								</c:forEach>
							</table>
					<tag:paginate max="15" offset="${offset}" count="${count}" uri="lcoBilling.html?user=${user}" next="&raquo;" previous="&laquo;" />
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
									id="ContentPlaceHolder1_lblVC_Count" style="font-weight: bold;">${countForBill}</span>
							</p>
						</div>
					</div>
					<div class=" table-responsive">
						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_gvbilling"
								style="width: 100%; border-collapse: collapse;">
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

							
								<c:forEach items="${BillUser}" var="user1" varStatus="itr">

									<tr>
										<form action="stbUpdateLCO.html">
												<td>${offsetForBill + itr.index +1 }</td>
											<td>${user1.username}</td>
											<td>${user1.customer_name}</td>
											<td>${user1.customer_mobile}</td>
											<td>${user1.customer_vc_no}</td>
											<td>${user1.last_recharge_date}</td>
											<td>${user1.con_expiry_date}</td>
											<td>${user1.connection_status}</td>
											<td><a class="btn-primary btn btn-block"
												href="createSingleBill.html?user=${user }&CustId=${user1.username}">
													Generate Bill</a></td>

										</form>
									</tr>

								</c:forEach>

							</table>
								<tag:paginate max="15" offset="${offsetForBill}" count="${countForBill}" uri="lcoBilling.html?user=${user}" next="&raquo;" previous="&laquo;" />
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

		<div id="popup2" class="modal-box">
		
			<a href="#" class="js-modal-close close">×</a>

				<div class="modal-body">
					<div class="modal-content">
						<div class="modal-header" style="background-color: #288484">
							<button type="button" class="close" data-dismiss="modal"></button>
							<h4 align="center" class="modal-title">
								<b style="color: white" id="inid"></b>
							</h4>
						</div>


						<div id="ContentPlaceHolder1_msgbox">

							<div id="ContentPlaceHolder1_pnlPrint">



								<br />
								<div id="print_ticket">
									<div class="detail">

											<table style="width: 95%;">
												<tr>
													<td>
														<p>
																<b> <span id="ContentPlaceHolder1_lblname"></span></b>
															</p>
															<p>
																<span id="ContentPlaceHolder1_lbladd1"></span>
															</p>
															<p>
																<span id="ContentPlaceHolder1_lbladd2"></span>
															</p>

													</td>
													<td>
														<table style="width: 100%;">
																<tr>
																	<td style="border: ridge">Account No</td>
																	<td style="border: ridge"><span
																		id="ContentPlaceHolder1_lblac"></span></td>
																</tr>
																<tr>
																	<td style="border: ridge">Bill Number</td>
																	<td style="border: ridge"><span
																		id="ContentPlaceHolder1_lblbillno"></span></td>
																</tr>

																<tr>
																	<td style="border: ridge">Billing Date</td>
																	<td style="border: ridge"><span
																		id="ContentPlaceHolder1_lblbilldate"></span></td>
																</tr>
																<tr>
																	<td style="border: ridge">Due Date</td>
																	<td style="border: ridge"><span
																		id="ContentPlaceHolder1_lblduedate"></span></td>
																</tr>
															</table>
														
													</td>
												</tr>
											</table>
										</div>

									<br />
									<div class="col-md-12" style="background-color: #288484">
										<p style="color: white" align="center">Make Online Payment
											and manage your account</p>
									</div>
									<div class="col-md-12">
										<table style="border: ridge">
											<tr>
												<td style="border: ridge; width: 210px"><b>Previous</b></td>
												<td style="border: ridge; width: 210px"><b>Last
														Payment</b></td>
												<td style="border: ridge; width: 210px">Advance<b></b></td>
												<td style="border: ridge; width: 210px"><b>Bill
														Amount </b></td>
												<td style="border: ridge; width: 210px"><b>Internet
														User Id</b></td>

											</tr>
											<tr>
												<td style="border: ridge; width: 210px"><b>RS 0</b></td>
												<td style="border: ridge; width: 210px"><b>RS 0</b></td>
												<td style="border: ridge; width: 210px">RS 0<b></b></td>
												<td style="border: ridge; width: 210px"><b>RS 520</b></td>
												<td style="border: ridge; width: 210px"><b>NA</b></td>
											</tr>
										</table>
									</div>
									<br />
									<div class="col-md-12">
										<div class="col-md-12">
											<table style="border: ridge">
												<tr>
													<td style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;"><b>Account
															details</b></td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;"><b>Amount</b></td>
												</tr>
												


												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;">(1)Service
														Tax</td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;">Rs 0.00</td>
												</tr>
												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;">(2)Entertainment
														Tax</td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;">Rs 0</td>
												</tr>

												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;"><b>Sub
															Total</b></td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;"><b>RS 520</b></td>
												</tr>

												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;">Previous
														Balance</td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;">Rs 0</td>
												</tr>

												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;"><b>Discount</b></td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;"><b>Rs</b></td>
												</tr>


												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;"><b>Total</b></td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;"><b>Rs 520</b></td>
												</tr>
												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;"><b>Late
															Payment Charges</b></td>
													<td style="border: ridge; width: 200px;padding: 5px 5px 5px 5px;"><b>Rs 50</b></td>
												</tr>

												<tr>
													<td align="right" style="border: ridge; width: 850px;padding: 5px 5px 5px 5px;"><b>Payable
															after due date</b></td>
													<td style="border: ridge;width: 200px;padding: 5px 5px 5px 5px;"><b>Rs 570</b></td>
												</tr>

											</table>



										</div>

									</div>

								</div>

							</div>



						</div>
						<div class="modal-footer">
							<a href="#" class="btn btn-small js-modal-close" onclick="return PrintPanel();">Print</a>
							<a href="#" class="btn btn-small js-modal-close">Close</a>

						</div>

					</div>
				</div>
				
		</div>
		<script type="text/javascript">
		 function PrintPanel() {
	            var panel = document.getElementById("popup2");
	            var printWindow = window.open('', '', 'height=400,width=850');
	            printWindow.document.write('<html><head><title>Generate Bill</title>');
	            printWindow.document.write('</head><body >');
	            printWindow.document.write(panel.innerHTML);
	            printWindow.document.write('</body></html>');
	            printWindow.document.close();
	            setTimeout(function () {
	                printWindow.print();
	            }, 500);
	            return false;
	        }</script>
		
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
