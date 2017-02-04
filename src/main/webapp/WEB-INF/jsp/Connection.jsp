<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
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

table#ContentPlaceHolder1_gvdash {
	background-color: #d5f7ce;
}

table td {
	width: 400px;
}

.nofound {
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
<style>
.nofound {
	color: red;
	font-size: 3ex;
	margin-left: 350px;
	widows: 100%;
}

html {
	font-family: "roboto", helvetica;
	position: relative;
	height: 100%;
	font-size: 100%;
	line-height: 1.5;
	color: #444;
}

.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
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

.btn-color {
	font-size: 2vmin;
	padding: 0.25em .75em;
	background-color: #428bca;
	border: 1px solid #bbb;
	color: #eeeeee;
	text-decoration: none;
	display: inline;
	border-radius: 4px;
	-webkit-transition: background-color 1s ease;
	-moz-transition: background-color 1s ease;
	transition: background-color 1s ease;
}

.v-center>div {
	display: table-cell;
	vertical-align: middle;
	position: relative;
	top: -10%;
}

.btn {
	font-size: 2vmin;
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
<script>
	$(function() {

		var appendthis = ("<div class='modal-overlay js-modal-close'></div>");

		$('a[data-modal-link]').click(function(e) {
			var id = $(this).attr('value');
			document.getElementById("inid").innerHTML ="Customer Id: "+id;
			var invoice = $(this).attr('value');
			$.ajax({  
	            type : 'GET', 
	            url: 'showCustInfo.html',
	            data: {
	            	'id': id,
	            	'user':  ${ user}
	            },
	            dataType: 'json',
	       		cache: false,
				beforeSend: function(xhr) 
	                        {
	                            xhr.setRequestHeader("Accept", "application/json");  
	                            xhr.setRequestHeader("Content-Type", "application/json");  
	                        },
	         	success: function (data) {
	             setData(data);
	           // alert(data.Billing_Date);
		            },
		            error: function(e){
		            	
		            }
	            
	        });
			//alert(id);
			e.preventDefault();
			$("body").append(appendthis);
			$(".modal-overlay").fadeTo(500, 0.7);
			//$(".js-modalbox").fadeIn(500);
			var modalBox = $(this).attr('data-modal-link');
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
	
	function setData( data){
		
		var Vcn=data.customer_vc_no;
		var Mobile=data.customer_mobile;
		var Email=data.customer_email;
		var Cstatus=data.connection_status;
		var pkge=data.package_name;
		var balance=data.account_balance;
		var exp=data.con_expiry_date;
		
		var Cname=data.customer_name;
		var pass=data.password;
		var address=data.customer_add;
		document.getElementById("expire").value =exp;
		document.getElementById("cname1").value =Cname;
		document.getElementById("passd").value =pass;
		
		document.getElementById("vc_no").value =Vcn;
		document.getElementById("mobile1").value =Mobile;
		document.getElementById("email1").value =Email;
		document.getElementById("status").value =Cstatus;
		document.getElementById("pkg").value =pkge;
		document.getElementById("bal").value =balance;
		document.getElementById("add").defaultValue =address;
		//alert(cname+","+pass+","+add+","+balance);
		
		
	}
</script>
</head>
<body onload="myFunction()"	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">

	<%
		if (session.getAttribute("lcoLogin") == null) {
			System.out.println("session not found");
			response.sendRedirect("lcologin.html?error=Session is Expired!!!");
		} else {
			System.out.println("session found");
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
		<header class="site-header push"> <marquee>Welcome
			to Payspot</marquee> </header>
		<!-- Pushy Menu -->
		<nav class="pushy pushy-left">
		<ul>
			<!--menu iteam code -->
			<li class="pushy-link"><a href="LCOHome.html?user=${user}"
				style="background: OLDLACE; color: black"><h5>${user}</h5> </font></a></li>
			<li class="pushy-link"><a
				href="allLCOCollection.html?user=${user}">Collection</a></li>
			<li class="pushy-link"><a
				href="allLCOComplain.html?user=${user} ">Complaint</a></li>
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
			<button type="button" class="btndashborad btn-pink ">Connection
			</button>



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

			<div class="row">
				<div class=" col-md-4 col-md-offset-4">
					<table id="ContentPlaceHolder1_rbselect" class="form-control">
						<tr>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_0" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="0" /><label
									for="ContentPlaceHolder1_rbselect_0">New Connection</label></span></td>
							<td><span class="radio-inline"><input
									id="ContentPlaceHolder1_rbselect_1" type="radio"
									name="ctl00$ContentPlaceHolder1$rbselect" value="1"
									checked="checked" /><label
									for="ContentPlaceHolder1_rbselect_1">Old Connection</label></span></td>
						</tr>
					</table>
				</div>
			</div>
			<hr />
			<div id="new" style="display: none">
					
				<div class="container">
					<div class="row">
						<form:form action="addNewUser.html?user=${user}" method="get" name="createnewuser"  
							commandName="subForm" autocomplete="off">
							<div class="col-sm-6">
							<div style="margin-bottom: 20px">
						  <form:input path="cf_number" tabindex="1"
							 class="form-control" id="mobile"
							placeholder="Cf Number" 
								onkeypress='return event.charCode >= 48 && event.charCode <= 57' pattern=".{10,}" maxlength="12" title="Please Enter your mobile number MINIMUM size =10"/>
										
										</div>
									</div>				
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
								
									<form:select path="customer_vc_no" class="form-control" id="findvalue" onchange='helloo()'
										placeholder="">
										<form:option value="NONE">Select Vc No</form:option>
										<form:options items="${vcstock}" />
									</form:select>
									<script>
									function helloo(){
										 var e = document.getElementById('findvalue');    
										    var val = e.options[e.selectedIndex].value;
										  
										    $.ajax({  
									            type : 'GET', 
									            url: 'expdate.html',
									            data: {
									            	'vcno': val,
									            	'user':  ${ user}
									            },
									            dataType: 'json',
									       		cache: false,
												beforeSend: function(xhr) 
									            {
							                          xhr.setRequestHeader("Accept", "application/json");  
							                          xhr.setRequestHeader("Content-Type", "application/json");  
							                    },
							         			success: function (data) {
							         			    getdata( data);
							       	            },
										         error: function(e){
											     }
											 });
										}
										function getdata( data){
										var exp_date=data.exp_date;
										document.getElementById("exp_date").value =exp_date;
										}
									  </script>
								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:select path="customer_stb_no" class="form-control" onchange="myFunc()" id="StbNo"
										placeholder="Package Name">
										<form:option value="NONE">Select Stb No</form:option>
										<form:options items="${stbno}" />
										</form:select>
										<script type="text/javascript">
										 function myFunc() {
											    var  selectedValue= $("#StbNo").val();
											    if(selectedValue=="NONE"){
											   		 alert(selectedValue);
											    }
										 }
										</script>
								</div>
							</div>
							<div class="col-sm-6">
								<input type="hidden" name="user" value="${user }" />
								<div style="margin-bottom: 20px">
									<form:input path="customer_name" tabindex="1" id="cname" 
										class="form-control" placeholder="Customer Name"
									pattern=".{5,}" maxlength="25" onkeypress="return onlyAlphabets(event,this)" title="Please Enter your name MINIMUM size =5" />
								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_mobile" tabindex="1"
										placeholder="Customer Mobile No." 
										onkeypress='return event.charCode >= 48 && event.charCode <= 57' pattern=".{10,}" maxlength="12" title="Please Enter your mobile number MINIMUM size =10"/>

								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="customer_email" tabindex="1"
										 class="form-control" id="email" name="email"
										placeholder="Customer Email-ID"  onkeyup="return emailvalidation(this.value)"  />
										<script type="text/javascript">
										function emailvalidation(email) {

										}
										 </script>

								</div>
							</div>
							
						
							<div class="col-sm-4">
								<div style="margin-bottom: 20px">
									<form:select path="id_proof_type" class="form-control" id="package"
										placeholder="ID Type Name">
										<form:option value="NONE">Select ID Type</form:option>
										<form:options items="${idprof}" />
									</form:select>
								</div>
							</div>
							<div class="col-sm-4">
								<div style="margin-bottom: 20px">
									<form:input path="customer_id_no" tabindex="1" id="id_no"
									 class="form-control"
										placeholder="Customer ID Proof Number" onkeypress='return event.charCode >= 48 && event.charCode <= 57' pattern=".{6,}" maxlength="25" title="Please Enter your ID number MINIMUM SIZE =6"/>
								</div>
							</div>
							
							<div class="col-sm-4">
								<div style="margin-bottom: 20px">

									<input type="file" name="uploadimage" id="myFile"
											tabindex="7" multiple size="50" onchange="myFunction()"
											class="form-control" placeholder="Upload file" />
											
										<p id="demo"></p>
	    
										<script>
										function myFunction(){
										    var x = document.getElementById("myFile");
										    var formData = new FormData();
										    formData.append('uploadimage', $('input[type=file]')[0].files[0]);
										    var txt = "";
										    if ('files' in x) {
										        if (x.files.length == 0) {
										         } else {
										        	  for (var i = 0; i < x.files.length; i++) {
										               var file = x.files[i];
										              
										                $.ajax({
										                    url : 'imageupload.html?user=<%= request.getParameter("user") %>',
										                    data : formData,
										                    enctype: 'multipart/form-data',
									
										                    processData : false,
										                    contentType : false,
										                    type : 'POST',
										                    success : function(data) {
										                        
										                    },
										                    error : function(err) {
										                        alert(err);
										                    }
										                });
										               
										            }
										        }
										    } 
										    else {
										        if (x.value == "") {
										            txt += "Select one or more files.";
										        } else {
										            txt += "The files property is not supported by your browser!";
										            txt  += "<br>The path of the selected file: " + x.value; // If the browser does not support the files property, it will return the path of the selected file instead. 
										        }
										    }
										    document.getElementById("demo").innerHTML = txt;
										}
										</script>
								</div>
							</div>
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:select path="package_name" class="form-control" id="findvalue1" onchange='hello()'
										placeholder="">
										<form:option value="NONE">Package Type</form:option>
										<form:options items="${pckInfo}" />
									</form:select>
									
										
									<script>
								function hello(){
										 var e = document.getElementById('findvalue1');    
										    var val = e.options[e.selectedIndex].value;
										    $.ajax({  
									            type : 'GET', 
									            url: 'findpriceget.html',
								            data: {
									            	'package_name': val,
									            	'user':  ${ user}
								            },
									            dataType: 'json',
									       		cache: false,
												beforeSend: function(xhr) 
								            {
							                          xhr.setRequestHeader("Accept", "application/json");  
						                          xhr.setRequestHeader("Content-Type", "application/json");  
							                    },
							         			success: function (data) {
							         				//alert(data);
							         			    getpackprice( data);
						       	            },
										         error: function(e){
										     }
											 });
										}
										function getpackprice( data){
										   	document.getElementById("amount").value =data;
								     	}
									  </script>
								</div>
							</div>
							
							
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<form:input path="package_amount" tabindex="1"
									 class="form-control" id="amount"
										placeholder="Package Price" />
										
								</div>
							</div>
							
							<div class="col-sm-6">
								
								<div style="margin-bottom: 20px">
								
									<form:textarea path="customer_add" name="customer_add" rows="3"
									cols="100" id="customer_add" class="form-control" value=""
									placeholder="Please Enter your Address" style="overflow:auto;resize:none;"/>
							
									

								</div>
							</div>

						
							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<div class="col-sm-6">
										<input type="submit"
											name="ctl00$ContentPlaceHolder1$btnsubmit" value="Submit" 											id="ContentPlaceHolder1_btnsubmit"
											class="btn btn-primary btn-block" style="font-weight: bold;" />
											<script type="text/javascript">
											function onlyAlphabets(e, t) {
									            try {
									                if (window.event) {
									                    var charCode = window.event.keyCode;
									                }
									                else if (e) {
									                    var charCode = e.which;
									                }
									                else { return true; }
									                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
									                	 return true;
									                else
									                    return false;
									            }
									            catch (err) {
									                alert(err.Description);
									            }
									        }

											function validation(){
											    var textbox = document.getElementById("cname");
											    if(textbox.value.length <= 10 && textbox.value.length >= 5){
											       return true;
											    }
											    else{
											    	return false;
											        alert("make sure the input is between 5-10 characters long")
											    }
											   
											}
// 											 onkeypress='return event.charCode >= 48 && event.charCode <= 57'
											</script>
									</div>
									<div class="col-sm-6">
										<input type="reset" name="ctl00$ContentPlaceHolder1$btn_reset"
											value="Reset" id="ContentPlaceHolder1_btn_reset"
											disabled="disabled" tabindex="30"
											class="aspNetDisabled btn btn-default btn-block"
											style="font-weight: bold;" />
									</div>


								</div>
							</div>

							<div class="col-sm-12" style="height: 1px"></div>
						</form:form>
					</div>
				</div>

			</div>























































			<div id="old">

				<div id="ContentPlaceHolder1_upd1">

					<div class="row">
						<form:form action="searchLCOConByLCO.html" method="get">
							<input type="hidden" name="user" value="${user }" />
							<div class="col-sm-3">
								<div style="margin-bottom: 10px">
									<input name="fdate" type="text" id="fdate" tabindex="1"
										class="form-control" placeholder="From Date" />

								</div>

							</div>
							<div class="col-sm-3">
								<div style="margin-bottom: 10px">

									<input name="edate" type="text" id="edate" tabindex="2"
										class="form-control" placeholder="To Date" />

								</div>
							</div>


							<div class="col-sm-3">
								<div style="margin-bottom: 10px">
									<input name="stb_no" type="text" id="fdate" tabindex="3"
										class="form-control" placeholder="STB No." />
								</div>

							</div>

							<div class="col-sm-3">
								<div style="margin-bottom: 10px">

									<input name="VC_No" type="text"
										id="ContentPlaceHolder1_txtvcno" tabindex="4"
										class="form-control" placeholder="VC No." />
								</div>
							</div>
							<div class="col-sm-3">
								<div style="margin-bottom: 10px">
									<input name="mobile" type="text"
										id="ContentPlaceHolder1_txtmobile" tabindex="5"
										class="form-control" placeholder="Mobile No." />

								</div>

							</div>

							<div class="col-sm-3">
								<div style="margin-bottom: 10px">
									<select name="status" id="ContentPlaceHolder1_ddlstatus"
										tabindex="6" class="form-control">
										<option value="0">Select</option>
										<option value="Pending">Pending</option>
										<option value="Live">Live</option>
										<option value="Expire">Expire</option>

									</select>

								</div>

							</div>
							<div class="col-sm-3">
								<div style="margin-bottom: 10px">
									<input name="pckg" type="text"
										id="ContentPlaceHolder1_txtpackage" tabindex="7"
										class="form-control" placeholder="Package Name" />

								</div>

							</div>


							<div class="col-sm-3">
								<div style="margin-bottom: 10px">

									<input type="submit"
										name="ctl00$ContentPlaceHolder1$btn_submit_request"
										value="Search" id="ContentPlaceHolder1_btn_submit_request"
										tabindex="30" class="btn-primary btn-color btn-block pull-left"/>


								</div>

							</div>
							<div class="nofound">${error}</div>
						</form:form>

					</div>



					<div class="col-sm-12">
						<hr />
						<div class="col-sm-12">
							<div style="margin-bottom: 0px">
								<p>
									Total Count : <span id="ContentPlaceHolder1_lblcount"
										style="font-weight: bold;">${count}</span>
								</p>
							</div>
						</div>
						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_gvdash"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col" style="width: 5%;">SNo.</th>
									<th scope="col">Customer ID</th>
									<th scope="col">VC No</th>
									<th scope="col">Name</th>
									<th scope="col">Email</th>
									<th scope="col">Connection Status</th>
									<th scope="col">Create Time</th>
									<!-- 									<th scope="col">Action</th> -->
									<!-- 									<th scope="col">Action</th> -->
								</tr>

								<tr>
									<c:forEach items="${userList}" var="user" varStatus="itr">
										<tr>
											<td style="width: 5%;">${offset + itr.index +1 }</td>
											<td><a href="#" value=${user.username
												}
												data-modal-link="popup3">${user.username}</a></td>

											<td>${user.customer_vc_no}</td>
											<td>${user.customer_name}</td>
											<td>${user.customer_email}</td>
											<td>${user.connection_status}</td>
											<td>${user.timestamp}</td>
											<!-- 											<td><a id="ContentPlaceHolder1_gvdash_LnktEdit_0" -->
											<!-- 												class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a></td> -->
											<!-- 											<td><a id="ContentPlaceHolder1_gvdash_LnkDetails_0" -->
											<!-- 												class="btn-primary btn btn-sm btn-block" -->
											<!-- 												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnkDetails&#39;,&#39;&#39;)">View/Print</a> -->
											<!-- 											</td> -->

										</tr>
									</c:forEach>

								</tr>
							</table>
							<%
								String finalQuery = "";
									String[] token = request.getQueryString().split("&");
									for (int i = 0; i < token.length; i++) {
										if (token[i].startsWith("offset")) {
											System.out.println("offset Find");
										} else
											finalQuery = finalQuery + token[i] + "&";
									}
									String main = request.getAttribute("javax.servlet.forward.request_uri").toString() + "?"
											+ finalQuery.substring(0, finalQuery.length() - 1);
									System.out.println("Query Link in jsp: " + main);
							%>
							<tag:paginate max="15" offset="${offset}" count="${count}"
								uri="<%=main%>" next="&raquo;" previous="&laquo;" />
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
										<div class="col-sm-1"></div>
										<div class="col-sm-10"></div>

									</div>

								</div>


							</div>
						</div>
						<div class="modal-footer">
							<button type="button" id="btnprint" class="btn btn-primary"
								onclick="return PrintPanel();">Print</button>
							<a id="ContentPlaceHolder1_Lnktclose" class="btn btn-default"
								href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$Lnktclose&#39;,&#39;&#39;)">Close</a>

						</div>

					</div>

				</div>

			</div>

			<script type="text/javascript">
				$(document).ready(function() {
					debugger;

					$('#edate').datepicker({
						dateFormat : 'yy-mm-dd'
					});
					$('#fdate').datepicker({
						dateFormat : 'yy-mm-dd'
					});

				});
			</script>
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
															$('#new').show();
															$('#old').hide();
														}
														if (chk == 1) {
															$('#old').show();
															$('#new').hide();

														}
													});

									// 									$('#ContentPlaceHolder1_txttodate')
									// 											.datepicker({
									// 												dateFormat : 'yy-mm-dd'
									// 											});
									// 									$('#ContentPlaceHolder1_txtfromdate')
									// 											.datepicker({
									// 												dateFormat : 'yy-mm-dd'
									// 											});
									// 									$('#ContentPlaceHolder1_txtforExp')
									// 									.datepicker({
									// 										dateFormat : 'yy-mm-dd'
									// 									});

									// 									$(
									// 											'#ContentPlaceHolder1_txtcustVCwarantydate')
									// 											.datepicker({
									// 												dateFormat :'yy-mm-dd'
									// 											});
								});

				function radioList() {
					debugger;
					var chk = $('#ContentPlaceHolder1_rbselect').find(
							":checked").val()

					if (chk == 0) {
						$('#new').show();
						$('#old').hide();
					}
					if (chk == 1) {
						$('#old').show();
						$('#new').hide();

					}
				}

				function PrintPanel() {
					var panel = document
							.getElementById("ContentPlaceHolder1_pnlPrint");
					var printWindow = window.open('', '',
							'height=400,width=850');
					printWindow.document
							.write('<html><head><title>Pratikshat Solution</title>');
					printWindow.document.write('</head><body >');
					printWindow.document.write(panel.innerHTML);
					printWindow.document.write('</body></html>');
					printWindow.document.close();
					setTimeout(function() {
						printWindow.print();
					}, 500);
					return false;
				}
			</script>

		</div>


		<div id="popup3" class="modal-box">

			<a href="#" class="js-modal-close close">×</a>

			<div class="modal-body">
				<div class="modal-content">
					<div class="modal-header" style="background-color: #288484">
						<button type="button" class="close" data-dismiss="modal"></button>
						<h4 align="center" class="modal-title">
							<b style="color: white" id="inid"></b>
						</h4>
					</div>
					<div class="row">
						<br>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">VC Number</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcode" type="text"
									readonly="readonly" id="vc_no" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Mobile No.</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtname" type="text"
									readonly="readonly" id="mobile1" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Name</p>
							</div>
							<div class="col-sm-8">
								<input name="name" type="text" id="cname1" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Password</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtname" type="text"
									id="passd" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Email</p>
							</div>
							<div class="col-sm-8">
								<input name="mail" type="text" id="email1" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Status</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtname" type="text"
									id="status" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Package</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcode" type="text"
									id="pkg" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Account Balance</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtname" type="text"
									id="bal" class="form-control" />
							</div>
						</div>
						<div style="width: 90%;height: 265px;">
							<div class="col-sm-3" style="width: 15%;margin-left: 15px;">
								<p class="p1">Address</p>
							</div>
							
							<textarea name="ctl00$ContentPlaceHolder1$txtrmark" rows="3"
								cols="100" id="add" 
								class="form-control" placeholder="Add Remark" style="width: 74%;overflow:auto;resize:none;">
								</textarea>
							
						</div>
						
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<div class="col-sm-3">
								<p class="p1">Expiry Date</p>
							</div>
							<div class="col-sm-8">
								<input name="ctl00$ContentPlaceHolder1$txtcode" type="text"
									readonly="readonly" id="expire" class="form-control" />
							</div>
						</div>
						<div class=" col-sm-5" style="width: 50%;height: 45px;">
							<input type="submit" tabindex="30" style="width: 90%;margin-left:15px;"
								class="btn-primary btn-color btn-block pull-left" />

						</div>
					</div>
					<div class="modal-footer">
						<a href="#" class="btn btn-small js-modal-close">Close</a>
					</div>
				</div>

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
		<%
			}
		%>
		<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
