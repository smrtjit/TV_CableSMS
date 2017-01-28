<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
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
	<meta name="viewport" content="width=device-width, initial-scale=1">

  <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
  
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

table#ContentPlaceHolder1_gvBulkRecharge {
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
			System.out.print("session not found");
			response.sendRedirect("lcologin.html?error=Session is Expired!!!");
		} else {
			System.out.print("session found");
	%>
	
		<div>
			<header class="site-header push"> <marquee>Welcome
				to Cable TV Show</marquee> </header>
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
					<div class=" col-md-4 col-md-offset-4">
						<table id="ContentPlaceHolder1_rbselect" class="form-control">
							<tr>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_0" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="0"
										 /><label
										for="ContentPlaceHolder1_rbselect_0">OneToOne_Recharge</label></span></td>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_1" type="radio"checked="checked"
										name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
										for="ContentPlaceHolder1_rbselect_1">Bulk Recharge</label></span></td>
							</tr>
						</table>
					</div>
				</div>
				<hr />

				<div id="oto" style="display: none">


					<div class="row">
					<form action="searchVCbyLCO.html">
					<input type="hidden" name="user" value="${user }"/>
						<div class="col-sm-3"></div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="VC_No" type="text"
									id="ContentPlaceHolder1_txtvcmobile" tabindex="1"
									class="form-control" placeholder="VC No" required/>

							</div>

						</div>


						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input type="submit" name="submit"
									value="Submit" id="ContentPlaceHolder1_btn_search"
									tabindex="12" class="btn-primary btn btn-block" />

							</div>
						</div>
						
						</form>
					</div>
	<div class="nofound" >
	${error }
	</div>
					<hr />

					<div class="container">
						<div class="row">

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtid" type="text"
										id="ContentPlaceHolder1_txtid" disabled="disabled"
										tabindex="2" class="aspNetDisabled form-control"
										placeholder="CustomerID" 
										value="${userDetails.username }"/>

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtname" type="text"
										id="ContentPlaceHolder1_txtname" disabled="disabled"
										tabindex="2" class="aspNetDisabled form-control"
										placeholder="Customer Name"
										value="${userDetails.customer_name }" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtadd" type="text"
										id="ContentPlaceHolder1_txtadd" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Address"
										value="${userDetails.customer_add }" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtpackage" type="text"
										id="ContentPlaceHolder1_txtpackage" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Package Name" 
										value="${pckinfo}"/>

								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtmobile" type="text"
										id="ContentPlaceHolder1_txtmobile" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Mobile No." 
										value="${userDetails.customer_mobile }"/>

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtemail" type="text"
										id="ContentPlaceHolder1_txtemail" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer Email Id" 
										value="${userDetails.customer_email }"/>

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="amt" type="text"
										id="ContentPlaceHolder1_txtamount" tabindex="3"
										class="form-control" placeholder="Amount Of Recharge"
										required style="border-color: Red;" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input type="submit" name="ctl00$ContentPlaceHolder1$btn_pay"
										value="Pay Now" id="ContentPlaceHolder1_btn_pay" tabindex="12"
										class="btn-primary btn btn-block" />

								</div>
							</div>
						<div class="col-sm-12" style="height: 1px"></div>
						</div>
					</div>

				</div>

				<div id="bulk" >
					<div class="row">
					<form action="processExcel.html" method="post"enctype="multipart/form-data">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
						<input  type="file" name="excelfile"  class="form-control" onchange="example()" id="filename"/><br>
							<script>
							
							       function example(){
							    	   var _validFileExtensions = [".xls"]; 
							    	   var arrInputs = document.getElementsByTagName("input");
							    	   
							           		for (var i = 0; i < arrInputs.length; i++) {
											    	var oInput = arrInputs[i];
											    	if (oInput.type == "file") {
											        	var sFileName = oInput.value;
											        	
											        	
											            if (sFileName.length > 0) {
											                var blnValid = false;
											                for (var j = 0; j < _validFileExtensions.length; j++) {
											                    var sCurExtension = _validFileExtensions[j];
											                    if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
											                        blnValid = true;
											                        break;
											                    }
											                }
											                if (!blnValid) {
											                    alert("Sorry, " + sFileName + " is invalid File , allowed extensions are: " + _validFileExtensions.join(", "));
											                    return false;
											                }
											            }
											      }
										    }
											  return true;
								       }
						
							       
							       function checkValue(data){
							    	 if(data==null || data==""){
							    		   alert('Please select the File First!!!');
							    		   return false;
							    	   }
							       }
								  </script>
															
						</div>
						<div class="col-sm-2">
						
							<input type="submit"  value="Upload"class="btn-primary btn btn-block" onclick="return checkValue(document.getElementById('filename').value);"/>
						</div>
						</form>
						
						<div class="col-sm-2">
							<input type="submit" name="#"value="Submit" id="#"	tabindex="12" class="btn-danger btn btn-block" />
						</div>
								
						
					</div>
					<hr />
					
					<div class="col-sm-12">
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p>
									Total No.of Data Uploaded : <span id="ContentPlaceHolder1_lblcount" style="font-weight: bold;"></span>
									<div class="row" >
										<div  class="col-sm-2  pull-right">
											<div class="container">
												<input type="button" value="Template"class="btn-primary btn btn-block"  id="myBtn"/>
												  <div class="modal fade" id="myModal" role="dialog">
										  			  <div class="modal-dialog">
										   			      <div class="modal-content">
										    			    <div class="modal-header" >
										        				  <button type="button" class="close" data-dismiss="modal">&times;</button>
										       				</div>
										       			 <div class="modal-body" style="padding:10px 10px;">
										   			      <img id="myImg" src="assets/img/bulktemplate.png" alt="Trolltunga, Norway" width="1000" height="600">
												        </div>
												    </div>
											    </div>
										  	</div> 
										</div>
										<script>
										$(document).ready(function(){
										    $("#myBtn").click(function(){
										        $("#myModal").modal();
										    });
										});
										</script>
																			
										</div>
									</div>
								</p>
								
								<table class="table table-striped table-bordered table-hover fontsize" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_gvdash" style="width:100%;border-collapse:collapse;">
									<tr>
										<th scope="col">SN</th><th scope="col">Customer_ID</th><th scope="col">Customer_Name</th><th scope="col">Customer_Address</th><th scope="col">Customer_Package_Name</th><th scope="col">Connection_Mobile_Number</th><th scope="col">Customer_Email_ID</th><th scope="col">Customer_Recharge_Amount</th>
									</tr>
									
									<tr>
									<% int i=0; %>
									<c:forEach items="${lstUser}" var="user">   
						   								<tr>
						   									<td> <%= i %></td>
						   									<td>${user.customerid}</td>
						   									<td>${user.customername}</td> 
						   									<td>${user.customeraddress}</td>	
						   									<td>${user.customerpackagename}</td>	
						   									<td>${user.customermobileno}</td>	
						   									<td>${user.customeremailid}</td>	
						   									<td>${user.customeramountofrecharge}</td>	
						   								<%
															i++;
														%>
														</tr>
														</c:forEach>
									</tr>
								</table>
								<h3><b><font color="red">${error}</font><b></b></h3>
							<div class="row" >
										<div  class="col-sm-2  pull-right">
											<div class="container">
											<a href="lcoTopUp.html?user=${user}">Clear</a>
<!-- 												<input type="button" value="Cancel"class="btn-primary btn btn-block"  id="myBtn"/> -->
											</div> 
										</div>
									</div>
							</div>
						</div>


						<div></div>

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
																$('#oto')
																		.show();
																$('#bulk')
																		.hide();
															}
															if (chk == 1) {
																$('#bulk')
																		.show();
																$('#oto')
																		.hide();

															}
														});
									});

					function radioList() {
						debugger;
						var chk = $('#ContentPlaceHolder1_rbselect').find(
								":checked").val()

						if (chk == 0) {
							$('#oto').show();
							$('#bulk').hide();
						}
						if (chk == 1) {
							$('#bulk').show();
							$('#oto').hide();

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
	
	<link href="assets/css/bootstrap.css" rel="stylesheet" />
	<%
		}
	%>
</body>
</html>
