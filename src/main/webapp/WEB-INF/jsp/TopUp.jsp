<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
	
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
	
		<div>
			<header class="site-header push"> <marquee>Welcome
			to Payspot</marquee> </header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
		<ul>
					<li class="pushy-link"><a href="LCOHome.html?user=${user}" style="background: OLDLACE; color: black"><h5>${user}</h5> </font></a></li>
			<li class="pushy-link"><a
				href="allLCOCollection.html?user=${user}">Collection</a></li>
			<li class="pushy-link"><a
				href="allLCOComplain.html?user=${user} ">Complaint</a></li>
			<li class="pushy-link"><a
				href="oldConnections.html?user=${user}">Connection</a></li>
			<li class="pushy-link"><a
				href="OldUserInfo.html?user=<%=request.getParameter("user")%>">Create
					User</a></li>
			<li class="pushy-link"><a href="lcoTopUp.html?user=${user}">Top-UP</a></li>
			<li class="pushy-link"><a href="lcoBilling.html?user=${user}">Bulk-Billing</a></li>
			<li class="pushy-link"><a href="lcostock.html?user=${user}">Stock</a></li>
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
				<button type="button" class="btndashborad btn-pink ">Topup </button>

				<div class="row">
					<div class=" col-md-4 col-md-offset-4">
						<table id="ContentPlaceHolder1_rbselect" class="form-control">
							<tr>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_0" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="0"
										 /><label
										for="ContentPlaceHolder1_rbselect_0">Account Management</label></span></td>
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
						<form:form action="saveBulkByLCO.html" method="get" name="savebulkInfo"
							commandName="bulkInfoForm" >
						<input type="hidden" name="user" value="${user }"/>
							<div  >
								<div class="col-sm-25">
									<div class="col-sm-0"></div>
									<div class=" col-sm-6">
										<div class="col-sm-4" style="margin-bottom: 18px">
											<p class="p1">Invoice</p>
										</div>
										<div class="col-sm-8">
										<form:input path="invoice_id" class="form-control" id="findvalue" value="" onchange="" 
												required="required" tabindex="1" placeholder="Invoice Number"/>
											
									<script>
								$("#findvalue").keyup( function() {
								    var invoice = $("#findvalue").val();
								   
								     $.ajax({  
							            type : 'GET', 
							            url: 'printBill.html',
							            data: {
							            	'invoice': invoice,
							            	'user':  ${user}
							            },
							            dataType: 'json',
							       		cache: false,
										beforeSend: function(xhr) 
							                        {
							                            xhr.setRequestHeader("Accept", "application/json");  
							                            xhr.setRequestHeader("Content-Type", "application/json");  
							                        },
							         				success: function (data) {
							         					 if(data=="Data Not Found"){
							         						// alert(data);
							         					 }else{
							         						setData( data);
							         					 }
							         					 
							         					 
							           						
								            },
								            error: function(e){
								            	
								            }
							            
							        });
								   
								});
								function setData( data){
									var todate= data.Billing_Date;
									var amt=data.Total_Amount;
									var st=data.Service_Tax;
									var at=data.Entertain_Tax;
									
									var cid=data.User_Id;
									var cname=data.User_Name;
									var ot=data.Other_Tax;
									var pkg=data.Package_Name;
									//alert(todate+","+amt+","+st+","+at);
									
									document.getElementById("dte").value =todate;
									document.getElementById("amount").value =amt;
									
									document.getElementById("custname").value =cname;
									document.getElementById("custId").value =cid;
									
									document.getElementById("service").value =st;
									document.getElementById("enttax").value =at;
									document.getElementById("other").value =ot;
									document.getElementById("pkc").value =pkg;
									
									
									
								}
											 	 
						  </script>
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">From</p>
							</div>
							<div class="col-sm-8">
							
								<input name="dte" readonly="readonly" type="text"
									id="dte" class="form-control"
									placeholder="" />
							</div>
						</div>
					</div>
					
					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Customer Id</p>
							</div>
							<div class="col-sm-8">
						
								<input name="custId" readonly="readonly" type="text"
									id="custId" class="form-control"
									placeholder="" />
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Customer Name</p>
							</div>
							<div class="col-sm-8">
							
								<input name="custname" readonly="readonly" type="text"
									id="custname" class="form-control"
									placeholder="" />
							</div>
						</div>
					</div>
					
					
					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Package</p>
							</div>
							<div class="col-sm-8">
						
								<input name="amount" readonly="readonly" type="text"
									id="pkc" class="form-control"
									placeholder="" />
							</div>
						</div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Amount</p>
							</div>
							<div class="col-sm-8">
							
								<input name="amount" readonly="readonly" type="text"
									id="amount" class="form-control"
									placeholder="" />
							</div>
						</div>

						
					</div>
					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Service Tax</p>
							</div>
							<div class="col-sm-8">
						
								<input name="service" readonly="readonly" type="text"
									id="service" class="form-control"
									placeholder="" />
							</div>
						</div>
						
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Amusement Tax</p>
							</div>
							<div class="col-sm-8">
						
								<input name="enttax" readonly="readonly" type="text"
									id="enttax" class="form-control"
									placeholder="" />
							</div>
						</div>
					</div>

					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Other Tax</p>
							</div>
							<div class="col-sm-8">
					
								<input name="other" readonly="readonly" type="text"
									id="other" class="form-control"
									/>
							</div>
						</div>

						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Recived Amount</p>
							</div>
							<div class="col-sm-8">
							<form:input path="receivedAmt" class="form-control" placeholder="Enter Recived Amount" required="required"/>
								
							</div>
						</div>
					</div>

					<div class="col-sm-25">
						<div class="col-sm-0"></div>
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Recived Via</p>
							</div>
							<div class="col-sm-8">
<%-- 							<form:input path="agentId" class="form-control" placeholder="Enter The Agent Id" /> --%>
							<form:select path="agentId" class="form-control" id="package">
										<form:option value="NONE">Select Agent</form:option>
										<form:options items="${agentName}" />
									</form:select>
							</div>
						</div>
						
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Reference ID</p>
							</div>
							<div class="col-sm-8">
							<form:input path="referenceId" class="form-control" placeholder="Enter The Reference Id"  />
						
							</div>
						</div>
					</div>
					
					<div class="col-sm-25"  >
							<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Payment Type</p>
							</div>
							<div class="col-sm-8">
<%-- 							<form:input path="agentId" class="form-control" placeholder="Enter The Agent Id" /> --%>
							<form:select path="Payment_Type" class="form-control" id="package">
										<form:option value="NONE">Select Payemnt Type</form:option>
										<form:options items="${paymentType}" />
									</form:select>
							</div>
						</div>
						
						
					
					</div>
					
					
					<div class="col-sm-25"  >
					
						<div class=" col-sm-6">
							<div class="col-sm-4" style="margin-bottom: 18px">
								<p class="p1">Remark</p>
							</div>
							<div class="col-sm-8">
							<form:textarea path="Remark" cols="100" id="ContentPlaceHolder1_txtrmark" class="form-control"
							placeholder="Enter Remark" style="overflow:auto;resize:none;" />
							</div>
						</div>
						<div class=" col-sm-6"style="text-align:center;width:90%;" >
							<input type="submit" name="ctl00$ContentPlaceHolder1$btn_sbmit"
								value="Submit" id="ContentPlaceHolder1_btn_sbmit" style="width:20%;"
								class="btn btn-primary" /> <a class="btn btn-primary"style="width:20%;"
								href="Custrecharge.jsp">Cancel</a>
						</div>
					</div>
					
					</form:form>
				</div>
<!-- 				<div class="col-sm-12" style="height: 1px"></div> -->
			</div>
		</div>

				</div>

				<div id="bulk" >
					<div class="row">
					<form action="processExcel.html" method="post"enctype="multipart/form-data">
					<input type="hidden" name="user" value="${user }"/>
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
						
								<input type="button" value="Submit" id="myButton" tabindex="12" class="btn-danger btn btn-block" />
								<script type="text/javascript">
								    $(document).ready(function() {
								       $("#myButton").click(function() {
								    	  // alert("check");
								    	   document.getElementById("dataForm").submit();
								       });
								    });
								</script>
							
						</div>
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
							   			 <div class="modal-body" style="padding:1px 1px;">
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
											<a href="lcoTopUp.html?user=${user}">Clear All</a>
											</div> 
										</div>
									</div>
								</p>
								<form:form method="POST" action="uploadBulkTopup.html" modelAttribute="bulkData" id="dataForm">
								<input type="hidden" name="user" value="${user }"/>
								<table class="table table-striped table-bordered table-hover fontsize" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_gvdash" style="width:100%;border-collapse:collapse;">
									<tr>
										<th scope="col">SN</th><th scope="col">Invoice No.</th><th scope="col" style="width:10%;">Customer ID</th><th scope="col">Name</th><th scope="col">Address</th><th scope="col">Package Name</th><th scope="col">Mobile</th><th scope="col">Email</th><th scope="col">Amount</th>
									</tr>
									
									<tr>
									<c:forEach items="${bulkData.bulkInfo}" var="user"
											varStatus="itr">
						   								<tr>
												<td>${itr.index}</td>
												<%-- 						   								<c:out value="user[${itr.index}].customerid"/> --%>
												<td>
												<form:input path="bulkInfo[${itr.index}].invoiceid" />
<%-- 												<input name="user[${itr.index}].customerid" --%>
<%-- 													value="${user.customerid}" /> --%>
													
													</td>
												<td>
												<form:input path="bulkInfo[${itr.index}].customerid" />
<%-- 												<input name="user[${itr.index}].customerid" --%>
<%-- 													value="${user.customerid}" /> --%>
													
													</td>
												<td>
												<form:input path="bulkInfo[${itr.index}].customername" />
<%-- 												<input name="user[${itr.index}].customername" --%>
<%-- 													value="${user.customername}" /> --%>
													</td>
												<td>
												<form:input path="bulkInfo[${itr.index}].customeraddress" />
<%-- 												<input name="user[${itr.index}].customeraddress" --%>
<%-- 													value="${user.customeraddress}" /> --%>
													</td>
												<td>
												<form:input path="bulkInfo[${itr.index}].customerpackagename" />
<%-- 												<input name="user[${itr.index}].customerpackagename" --%>
<%-- 													value="${user.customerpackagename}" /> --%>
													</td>
												<td>
												<form:input path="bulkInfo[${itr.index}].customermobileno" />
<%-- 												<input name="user[${itr.index}].customermobileno" --%>
<%-- 													value="${user.customermobileno}" /> --%>
													</td>
												<td>
												<form:input path="bulkInfo[${itr.index}].customeremailid" />
<%-- 												<input name="user[${itr.index}].customeremailid" --%>
<%-- 													value="${user.customeremailid}" /> --%>
													</td>
												<td>
												<form:input path="bulkInfo[${itr.index}].customeramountofrecharge" />
<%-- 												<input name="user[${itr.index}].customeramountofrecharge" --%>
<%-- 													value="${user.customeramountofrecharge}" /> --%>
													</td>
												<%-- 						   									<td>${user.customerid}</td> --%>
												<%-- 						   									<td>${user.customername}</td>  --%>
												<%-- 						   									<td>${user.customeraddress}</td>	 --%>
												<%-- 						   									<td>${user.customerpackagename}</td>	 --%>
												<%-- 						   									<td>${user.customermobileno}</td>	 --%>
												<%-- 						   									<td>${user.customeremailid}</td>	 --%>
												<%-- 						   									<td>${user.customeramountofrecharge}</td>	 --%>

											</tr>
														</c:forEach>
									</tr>
									
									
								</table>
								
									</form:form>
								<h3><b><font color="red">${error}</font><b></b></h3>
									
							</div>
						</div>


						<div></div>

					</div>

				</div>

				<script type="text/javascript">
				function hello(){
					alert("hello");
				}
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
