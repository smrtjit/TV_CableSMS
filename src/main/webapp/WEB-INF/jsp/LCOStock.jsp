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

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>




<style type="text/css">
.btn-primary-color {
    color: #ffffff;
    background-color: #f5f5f5;
    border-color: #357ebd;
}
.p1 {
	font-style: initial;
	font-weight: bold;
	font-size: 16px;
}
.btn-my{
display: inline-block;
    padding: 4px 14px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.428571429;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    -o-user-select: none;
    user-select: none;
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
			<button type="button" class="btndashborad btn-pink ">Stock </button>

			<div class="row">
				<div
					style="margin-left: auto; margin-right: auto; margin-top: -10px; width: 25em">

					<table id="ContentPlaceHolder1_rbselect" class="form-control">
						<tr>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_0" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="0"
									/><label
									for="ContentPlaceHolder1_rbselect_0">STB Box</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
									for="ContentPlaceHolder1_rbselect_1">VC Number</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_2" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="2" /><label
									checked="checked"  for="ContentPlaceHolder1_rbselect_2">Add Stock</label></span></td>

						</tr>
					</table>
				</div>
			</div>
			<hr />
			
			
			
			
			
			<div id="stb" style="display: none">
				<form action="#">
					<input type="hidden" name="user" value="${user }" />

					<div class="col-sm-3">
						<div style="margin-bottom: 10px">
							<input name="stb_num" type="text"
								id="ContentPlaceHolder1_txttodate" tabindex="1"
								class="form-control" placeholder="Setup Box Number" />
						</div>

					</div>

					<div class="col-sm-3">
						<div style="margin-bottom: 10px">

							<input name="brand" type="text"
								id="ContentPlaceHolder1_txtfromdate" tabindex="2"
								class="form-control" placeholder="By Brand" />

						</div>
					</div>

					<div class="col-sm-3">
						<div style="margin-bottom: 10px">

							<input name="mso" type="text" id="ContentPlaceHolder1_txtvcno"
								tabindex="2" class="form-control" placeholder="By MSO." />
						</div>
					</div>
					<div class="col-sm-3">
						<div style="margin-bottom: 10px">
							<input name="Status" type="text"
								id="ContentPlaceHolder1_txtmobile" tabindex="1"
								class="form-control" placeholder="Status" />

						</div>

					</div>
				

					<div class="col-sm-2 pull-right">
						<div style="margin-bottom: 10px ">

							<input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_search_request"
								value="Search" id="ContentPlaceHolder1_btn_search_request"
								tabindex="30" class="btn-primary btn btn-block" />

						</div>

					</div>
					<div class="nofound">${error}</div><br>
				</form>
				
					
					<div class="col-sm-5">
						<div style="margin-bottom: 30px">
							
							<p>
								Total No.of Data Uploaded : <span
									id="ContentPlaceHolder1_lblStbCount" style="font-weight: bold;">${countForSTB}</span>
							</p>
						</div>
					</div>
					<br>
			
					<div class=" table-responsive">
						<div>
							<table class="table table-striped jambo_table bulk_action"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_grdSTB"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th width="5%" scope="col">SN</th>
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
									<c:forEach items="${stbList}" var="user1" varStatus="itr">
								
									<tr>
									<form action="stbUpdateLCO.html">
									<input type="hidden" name="user" value="${user}"/>
									<input type="hidden" name="STB" value="${user1.stb_box_no}"/>
										<td>${offsetForSTB + itr.index +1 }</td>
										<td>${user1.stb_box_no}</td>
										<td>${user1.company}</td>
										<td>${user1.mso}</td>
										<td>${user1.manufacture_date}</td>
										<td>${user1.exp_date}</td>
										<td>${user1.current_status}</td>

										<td>
										<select name="stbStatus" style="  padding:6px; width: 110px;">
										<option value="Live">Live</option>
										<option value="Faulty">Faulty</option>
										<option value="OffLine">OffLine</option>
										</select>
										
										<input type="submit" name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit" 
											value="" class="aspNetDisabled btn-my btn-primary-color"  style="background-image:url('assets/img/edit2.png') " />
									
										</td>

										</form>
									</tr>
									
								</c:forEach>
								<%
								String finalQuery="";
								String tmp= request.getQueryString();
								String main=null;
								if(tmp!=null){
									String []token= tmp.split("&");
									for(int i=0;i<token.length;i++){
										if(token[i].startsWith("offset")){
											System.out.println("ttttttttttttttttttttttt 5       offset Find");
										}else
										finalQuery=finalQuery+token[i]+"&";
									}
									 main=request.getAttribute("javax.servlet.forward.request_uri").toString()+"?"+finalQuery.substring(0, finalQuery.length()-1);
									System.out.println("Query Link in jsp : "+main);
								}
							
							%>
							
							</table>
								<tag:paginate max="15" offset="${offsetForSTB}" count="${countForSTB}" uri="<%= main%>"  next="&raquo;" previous="&laquo;" />
						</div>
					</div>
				</div>

			

			<div id="vc">
			<form action="#">
					<input type="hidden" name="user" value="${user }" />

					<div class="col-sm-3">
						<div style="margin-bottom: 10px">
							<input name="vc_num" type="text"
								class="form-control" placeholder="VC Number" />
						</div>

					</div>

					<div class="col-sm-3">
						<div style="margin-bottom: 10px">

							<input name="vcbrand" type="text"
								class="form-control" placeholder="By Brand" />

						</div>
					</div>

					<div class="col-sm-3">
						<div style="margin-bottom: 10px">

							<input name="vcmso" type="text" 
								tabindex="2" class="form-control" placeholder="By MSO." />
						</div>
					</div>
					<div class="col-sm-3">
						<div style="margin-bottom: 10px">
							<input name="vcStatus" type="text"
								 tabindex="1"
								class="form-control" placeholder="Status" />

						</div>

					</div>
				

					<div class="col-sm-2 pull-right">
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
						<div style="margin-bottom: 30px">
						
							<p>
								Total No.of Data Uploaded : <span
									id="ContentPlaceHolder1_lblVC_Count" style="font-weight: bold;">${countForVC}</span>
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
									<th width="5%" scope="col">SN</th>
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
								<c:forEach items="${vcList}" var="data" varStatus="itr">
								<form name="theForm" action="updateVCStatus.html">
								<input type="hidden" name="user" value="${user}"/>
									<tr>
									<input type="hidden" name="VC_No" value="${data.vc_no}"/>
									<td >${offsetForVC + itr.index +1 }</td>
										<td>${data.vc_no}</td>
										<td>${data.company}</td>
										<td>${data.mso}</td>
										<td>${data.manufacture_date}</td>
										<td>${data.exp_date}</td>
										<td>${data.current_status}</td>

										
										<td>
										<select name="stbStatus" style="  padding:6px; width: 110px;">
										<option value="Live">Live</option>
										<option value="Faulty">Faulty</option>
										<option value="OffLine">OffLine</option>
										</select>
										
										<input type="submit" name="ctl00$ContentPlaceHolder1$grdVC$ctl03$btnEdit" 
											value="" class="aspNetDisabled btn-my btn-primary-color"  style="background-image:url('assets/img/edit2.png') " />
									
										</td>
									</tr>
									</form>
								</c:forEach>
								
							</table>
							<tag:paginate max="15" offset="${offsetForVC}" count="${countForVC}" uri="<%= main%>"  next="&raquo;" previous="&laquo;" />
						</div>
					</div>
				</div>

		</div>

		<div id="addnewstock"  style="display: none">
					<div class="row">
						<form action="#">
							<input type="hidden" name="user" value="${user }" />
		
							<div class="col-sm-2">
								<div style="margin-bottom: 10px">
									<p class="p1">Add Stock</p>
								</div>
		
							</div>
		
							<div class="col-sm-3">
								<div style="margin-bottom: 10px">
												<select name="stbStatus" class="form-control" style="padding:6px; width: 250px;"
										id="temp" onchange='chyeckindex()'>
										<option value="None">Select Type</option>
										<option value="Vc_Number">Vc Number</option>
										<option value="STB_Box">STB Box</option>
										</select>
										<script>
										function chyeckindex(){
										 var e = document.getElementById('temp');    
										    var string = e.options[e.selectedIndex].value;
										    if (string === "None"){
												
										 		$('#vcnumber').hide();
												$('#stbbox').hide();
												$('#nonedata').show();
											}
											if (string === "Vc_Number"){
										 		$('#vcnumber').show();
												$('#stbbox').hide();
												$('#nonedata').hide();
											}
											if (string === "STB_Box"){
										 		$('#vcnumber').hide();
												$('#stbbox').show();
												$('#nonedata').hide();
											}
																			
										}
							  </script>
										
										
						</div>
					</div>

					
					<div class="nofound">${error}</div><br>
						</form>
					</div>
					<hr />
					<div id="vcnumber" style="display: none" >
					<div class="row">
					<form action="vcstockexcel.html" method="post" enctype="multipart/form-data">
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
							
							<input type="hidden" name="user" value="${user }"/>
						</div>
						<script>
							function inserytvcBulk(){
								alert("hello")	;	
								 var element = document.getElementById('insertdata');  
								 var x = document.getElementById("tabelid").rows.length;
								 alert(x);
							
								 $.ajax({  
								            type : 'GET', 
								            url: 'lcovcnumberadd.html',
							            data: {
								            	
								            	"user":  ${ user},
								            	"lstUser": ${ lstUser}
							            },
								            dataType: 'json',
								       		cache: false,
											beforeSend: function(xhr) 
							            {
						                          xhr.setRequestHeader("Accept", "application/json");  
					                          xhr.setRequestHeader("Content-Type", "application/json");  
						                    },
						         			success: function (data) {
						         			   alert("fghfghfg");
					       	            },
									         error: function(e){
									     }
									 });
								}
						</script>
						
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
								<p id="demo">
									Total No.of Data Uploaded : <span id="ContentPlaceHolder1_lblcount" style="font-weight: bold;"></span>
									<div class="row" >
										<div  class="col-sm-2  pull-right">
											<div class="container">
											<a href="lcostock.html?user=${user}">Clear All</a>
											</div> 
										</div>
									</div>
								</p>
								<script type="text/javascript">
								    $(document).ready(function() {
								       $("#myButton").click(function() {
								    	  // alert("check");
								    	   document.getElementById("dataForm").submit();
								       });
								    });
								</script>
								<form:form method="POST" action="uploadBulkVC.html" modelAttribute="bulkData" id="dataForm">
								<input type="hidden" name="user" value="${user }"/>
								<table class="table table-striped table-bordered table-hover fontsize" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_gvdash" style="width:100%;border-collapse:collapse;">
									<tr>
										<th scope="col">SN</th><th scope="col">VC No.</th><th scope="col" style="width:10%;">Manufacture Date</th><th scope="col">Expire Date</th><th scope="col">Company Name</th><th scope="col">MSO</th><th scope="col">Status</th>
									</tr>
									
									<tr>
									<c:forEach items="${bulkData.vcstock}" var="user"
											varStatus="itr">
						   								<tr>
												<td>${itr.index}</td>
												<%-- 						   								<c:out value="user[${itr.index}].customerid"/> --%>
												<td>
												<form:input path="vcstock[${itr.index}].vc_no" />
<%-- 												<input name="user[${itr.index}].customerid" --%>
<%-- 													value="${user.customerid}" /> --%>
													
													</td>
												<td>
												<form:input path="vcstock[${itr.index}].manufacture_date" />
<%-- 												<input name="user[${itr.index}].customerid" --%>
<%-- 													value="${user.customerid}" /> --%>
													
													</td>
												<td>
												<form:input path="vcstock[${itr.index}].exp_date" />
<%-- 												<input name="user[${itr.index}].customername" --%>
<%-- 													value="${user.customername}" /> --%>
													</td>
												<td>
												<form:input path="vcstock[${itr.index}].company" />
<%-- 												<input name="user[${itr.index}].customeraddress" --%>
<%-- 													value="${user.customeraddress}" /> --%>
													</td>
												<td>
												<form:input path="vcstock[${itr.index}].mso" />
<%-- 												<input name="user[${itr.index}].customerpackagename" --%>
<%-- 													value="${user.customerpackagename}" /> --%>
													</td>
												<td>
												<form:input path="vcstock[${itr.index}].current_status" />
<%-- 												<input name="user[${itr.index}].customermobileno" --%>
<%-- 													value="${user.customermobileno}" /> --%>
													</td>
												<td>
												
											
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
					<div id="stbbox"  style="display: none">
					<div class="row">
					<form action="stbstockexcel.html" method="post" enctype="multipart/form-data">
					<input type="hidden" name="user" value="${user }"/>
						<div class="col-sm-3"></div>
						<div class="col-sm-3">
						<input  type="file" name="excelfile"  class="form-control" onchange="example1()" id="stbname"/><br>
							<script>
							
							       function example1(){
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
						
							       
							       function checkValue1(data){
							    	 if(data==null || data==""){
							    		   alert('Please select the File First!!!');
							    		   return false;
							    	   }
							       }
							       
								  </script>
															
						</div>
						<div class="col-sm-2">
						
							<input type="submit"  value="Upload"class="btn-primary btn btn-block" onclick="return checkValue1(document.getElementById('stbname').value);"/>
						</div>
						</form>
						<div class="col-sm-2">
								<input type="button" value="Submit" id="stbButton" tabindex="12" class="btn-danger btn btn-block" />
						<input type="hidden" name="user" value="${user }"/>
						</div>
						<script>
							function inserytvcBulk(){
								alert("hello")	;	
								 var element = document.getElementById('insertdata');  
								 var x = document.getElementById("tabelid").rows.length;
								 alert(x);
							
								 $.ajax({  
								            type : 'GET', 
								            url: 'lcovcnumberadd.html',
							            data: {
								            	
								            	"user":  ${ user},
								            	"lstUser": ${ lstUser}
							            },
								            dataType: 'json',
								       		cache: false,
											beforeSend: function(xhr) 
							            {
						                          xhr.setRequestHeader("Accept", "application/json");  
					                          xhr.setRequestHeader("Content-Type", "application/json");  
						                    },
						         			success: function (data) {
						         			   alert("fghfghfg");
					       	            },
									         error: function(e){
									     }
									 });
								}
						</script>
						
						<div class="row" >
						<div  class="col-sm-2  pull-right">
							<div class="container">
							<input type="button" value="Template"class="btn-primary btn btn-block"  id="myBtn1"/>
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
										    $("#myBtn1").click(function(){
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
								<p id="demo">
									Total No.of Data Uploaded : <span id="ContentPlaceHolder1_lblcount" style="font-weight: bold;"></span>
									<div class="row" >
										<div  class="col-sm-2  pull-right">
											<div class="container">
											<a href="lcostock.html?user=${user}">Clear All</a>
											</div> 
										</div>
									</div>
								</p>
								<script type="text/javascript">
								    $(document).ready(function() {
								       $("#stbButton").click(function() {
								    	  // alert("check");
								    	   document.getElementById("dataForm1").submit();
								       });
								    });
								</script>
								<form:form method="POST" action="uploadBulkSTB.html" modelAttribute="bulkData" id="dataForm1">
								<input type="hidden" name="user" value="${user }"/>
								<table class="table table-striped table-bordered table-hover fontsize" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_gvdash" style="width:100%;border-collapse:collapse;">
									<tr>
										<th scope="col">SN</th><th scope="col">VC No.</th><th scope="col" style="width:10%;">Manufacture Date</th><th scope="col">Expire Date</th><th scope="col">Company Name</th><th scope="col">MSO</th><th scope="col">Status</th>
									</tr>
									
									<tr>
									<c:forEach items="${bulkData.stbstock}" var="user"
											varStatus="itr">
						   								<tr>
												<td>${itr.index}</td>
												<%-- 						   								<c:out value="user[${itr.index}].customerid"/> --%>
												<td>
												<form:input path="stbstock[${itr.index}].stb_box_no" />
<%-- 												<input name="user[${itr.index}].customerid" --%>
<%-- 													value="${user.customerid}" /> --%>
													
													</td>
												<td>
												<form:input path="stbstock[${itr.index}].manufacture_date" />
<%-- 												<input name="user[${itr.index}].customerid" --%>
<%-- 													value="${user.customerid}" /> --%>
													
													</td>
												<td>
												<form:input path="stbstock[${itr.index}].exp_date" />
<%-- 												<input name="user[${itr.index}].customername" --%>
<%-- 													value="${user.customername}" /> --%>
													</td>
												<td>
												<form:input path="stbstock[${itr.index}].company" />
<%-- 												<input name="user[${itr.index}].customeraddress" --%>
<%-- 													value="${user.customeraddress}" /> --%>
													</td>
												<td>
												<form:input path="stbstock[${itr.index}].mso" />
<%-- 												<input name="user[${itr.index}].customerpackagename" --%>
<%-- 													value="${user.customerpackagename}" /> --%>
													</td>
												<td>
												<form:input path="stbstock[${itr.index}].current_status" />
<%-- 												<input name="user[${itr.index}].customermobileno" --%>
<%-- 													value="${user.customermobileno}" /> --%>
													</td>
												<td>
												
											
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
					<div id="nonedata" >
						<div class="row">
							<form action="vcprocessExcel.html" method="post"enctype="multipart/form-data">
								<input type="hidden" name="user" value="${user }"/>
									<div class="col-sm-3">
										<div style="margin-bottom: 10px">
											<p class="p1">Please Change Select Type</p>
										</div>
								</div>
							</form>
						</div>
					</div>
		</div>		

			

			<script type="text/javascript">
				$(document)
						.ready(
								function() {
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
															$('#addnewstock').hide();

														}
														if (chk == 1) {

															$('#addnewstock').hide();
															$('#stb').hide();
															$('#vc').show();

														}
														if (chk == 2) {

															$('#stb').hide();
															$('#vc').hide();
															$('#addnewstock').show();

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
