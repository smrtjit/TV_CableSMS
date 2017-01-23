<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- Pushy CSS -->
<link rel="stylesheet" href="assets/css/pushy.css" />
<script src="bootstrap/js/pushy.min.js"></script>

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

#rcorners3 {
    border-radius: 25px;
    background: url(paper.gif);
    background-position: left top;
    background-repeat: repeat;
    padding: 20px; 
    width: 200px;
    height: 150px;    
}
</style>
</head>
<body

	<%
		if (session.getAttribute("lmlogin") == null) {
			System.out.print("session not found");
			response.sendRedirect("lmlogin.html?error=Session is Expired!!!");
		} else {
			System.out.print("session found");

	%>
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
	

		<script type="text/javascript">


$("#txtLeave").focus(function() {
    $(this).mouseleave(function() {
        console.log("leaving...");
        $(this).off();
    });
});

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
			<header class="site-headerl push">
				<marquee>Welcome to Cable TV Show</marquee>
			</header>
			<!-- Pushy Menu -->
			<nav class="pushy pushy-left">
				<ul>
				
				<li class="pushy-link" ><div width="75%"><div><a href="#" style="background:#808080;color:white"><h5>${user}</h5></font></a></div></div></li>
									<li class="pushy-link"><a href="allLMComplain.html?user=${user}">Complaint</a></li>
					<li class="pushy-link"><a href="lmConnection.html?user=${user}">Connection</a></li>
					<!--                     <li class="pushy-link"><a href="packages.aspx">Packages</a></li> -->
					<li class="pushy-link"><a href="topupPage.html?user=${user}">Top-UP</a></li>
					<li class="pushy-link"><a href="accountMgmt.html?user=${user}">Account Management</a></li>
<!-- 					<li class="pushy-link"><a href="LMBulkTransactions.jsp">Bulk -->
<!-- 							Transactions</a></li> -->
					<!--                     <li class="pushy-link"><a href="stock.aspx">Stock</a></li> -->
					<!--                     <li class="pushy-link"><a href="report.aspx">Reports</a></li> -->
					<!--                     <li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
					<li class="pushy-link"><a href="lmAccount.html?user=${user}">My Account</a></li>
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
					<div class=" col-md-4 col-xm-4 col-md-offset-4">
						<table id="ContentPlaceHolder1_rbselect" class="form-control">
							<tr>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_0" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="0"
										checked="checked" /><label
										for="ContentPlaceHolder1_rbselect_0">DashBoard</label></span></td>
								<td><span class="radio-inline"><input
										id="ContentPlaceHolder1_rbselect_1" type="radio"
										name="ctl00$ContentPlaceHolder1$rbselect" value="1" /><label
										for="ContentPlaceHolder1_rbselect_1">Register_Complaint</label></span></td>
							</tr>
						</table>
					</div>
				</div>

				<hr />


				<div id="dash">




					<div class="row">

						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txttodate" type="text"
									id="ContentPlaceHolder1_txttodate" tabindex="1"
									class="form-control" placeholder="From Date" />
							</div>

						</div>

						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input name="ctl00$ContentPlaceHolder1$txtfromdate" type="text"
									id="ContentPlaceHolder1_txtfromdate" tabindex="2"
									class="form-control" placeholder="To Date" />

							</div>
						</div>

						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input name="ctl00$ContentPlaceHolder1$txtvcno" type="text"
									id="ContentPlaceHolder1_txtvcno" tabindex="2"
									class="form-control" placeholder="VC No." />
							</div>
						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtmobile" type="text"
									id="ContentPlaceHolder1_txtmobile" tabindex="1"
									class="form-control" placeholder="Mobile No." />

							</div>

						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="ctl00$ContentPlaceHolder1$txtpkg" type="text"
									id="ContentPlaceHolder1_txtpkg" tabindex="2"
									class="form-control" placeholder="Status" />
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
						<div style="margin-bottom: 0px">
							<p>
								<b>Total Count</b> : <span id="ContentPlaceHolder1_lblcount"
									style="font-weight: bold;">${fn:length(userList)}</span>
							</p>
						</div>
						<div class="col-sm-12">



							<div id="ContentPlaceHolder1_upd1">



								<div>
									<table
										class="table table-striped table-bordered table-hover fontsize"
										cellspacing="0" rules="all" border="1"
										id="ContentPlaceHolder1_gvdash"
										style="width: 100%; border-collapse: collapse;">
										<tr>
											<th scope="col">SN</th>
											<th scope="col">Complain ID</th>
											<th scope="col">Customer VC No</th>
											<th scope="col">Customer Name</th>
											<th scope="col">Customer Address</th>
											<th scope="col">Customer Mobile</th>
											<th scope="col">Type of Complaint</th>
											<th scope="col">Current Status</th>
											<th scope="col">Action</th>
										</tr>
											<%
									int i=0;
								%>
								<c:forEach items="${userList}" var="user">   
   								<tr>
   									<td> <%= i %></td>
   									<td>${user.complaint_no}</td>
   									<td>${user.customer_vcno}</td>
   									<td>${user.customer_name}</td>
   									<td>${user.customer_add}</td>
   									<td>${user.customer_mobile}</td>
   									<td>${user.complaint_type}</td>
   									<td>${user.complaint_status}</td>
   									<td><a id="ContentPlaceHolder1_gvdash_LnktDetail_9"
												class="btn-primary btn btn-block"
												href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl11$LnktDetail&#39;,&#39;&#39;)">View/Print</a>

											</td>
									<%
									i++;
								%>
								</tr>
								</c:forEach>									
<!-- 										<tr> -->
<!-- 											<td colspan="9"><table> -->
<!-- 													<tr> -->
<!-- 														<td><span>1</span></td> -->
<!-- 														<td><a -->
<!-- 															href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$2&#39;)">2</a></td> -->
<!-- 														<td><a -->
<!-- 															href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$3&#39;)">3</a></td> -->
<!-- 														<td><a -->
<!-- 															href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$4&#39;)">4</a></td> -->
<!-- 													</tr> -->
<!-- 												</table></td> -->
<!-- 										</tr> -->
									</table>
								</div>

							</div>

						</div>

					</div>

				</div>

				<div id="comp" style="height: 300px; display: none">


					<div class="row">

						<div class="col-sm-2">
							<div style="margin-bottom: 10px">
								<input name="vc_no" type="text" id="txtLeave" tabindex="1" class="form-control" placeholder="VC Number" />

							</div>

						</div>
						<div class="col-sm-1">
							<div style="margin-bottom: 10px">
								<p style="margin-left: 20px">OR</p>

							</div>

						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input name="mobile" type="text"
									id="ContentPlaceHolder1_txtmobileno" tabindex="2"
									class="form-control" placeholder="Mobile Number" />

							</div>
						</div>

						<div class="col-sm-2">
							<div style="margin-bottom: 20px">
								<select name="ctl00$ContentPlaceHolder1$ddlcomplaint"
									id="ContentPlaceHolder1_ddlcomplaint" tabindex="11"
									class="form-control" placeholder="Responsibility">
									<option value="Select">Complaint Type</option>
									<option value="No Signal">No Signal</option>
									<option value="Not Working">Not Working</option>
									<option value="STB Problem">STB Problem</option>
									<option value="Bad Singnal">Bad Singnal</option>
									<option value="Channel Not Available">Channel Not
										Available</option>

								</select>

							</div>
						</div>

						<div class="col-sm-2">
							<textarea name="ctl00$ContentPlaceHolder1$txtrmark" rows="2"
								cols="20" id="ContentPlaceHolder1_txtrmark" class="form-control"
								placeholder="Add Remark">
</textarea>

						</div>
						<div class="col-sm-2">
							<div style="margin-bottom: 10px">

								<input type="submit"
									name="ctl00$ContentPlaceHolder1$btn_addUser"
									value="Lock Complaint" id="ContentPlaceHolder1_btn_addUser"
									tabindex="12" class="btn-primary btn btn-block" />

							</div>
						</div>
					</div>

					<hr />

					<div class="container">
						<div class="row">

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtcustname" type="text"
										id="ContentPlaceHolder1_txtcustname" disabled="disabled"
										tabindex="2" class="aspNetDisabled form-control"
										placeholder="Customer Name" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">
									<input name="ctl00$ContentPlaceHolder1$txtcustadd" type="text"
										id="ContentPlaceHolder1_txtcustadd" disabled="disabled"
										tabindex="2" class="aspNetDisabled form-control"
										placeholder="Customer Address" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustmobilenumber"
										type="text" id="ContentPlaceHolder1_txtcustmobilenumber"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="Customer Mobile No." />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustEmailid"
										type="text" id="ContentPlaceHolder1_txtcustEmailid"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="Customer Email-ID" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustvcno" type="text"
										id="ContentPlaceHolder1_txtcustvcno" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Customer VC No." />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustsbtno"
										type="text" id="ContentPlaceHolder1_txtcustsbtno"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="Customer STB No," />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustwarantydate"
										type="text" id="ContentPlaceHolder1_txtcustwarantydate"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="VC Warranty Date" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustconnection"
										type="text" id="ContentPlaceHolder1_txtcustconnection"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="Connection Status" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustpackege"
										type="text" id="ContentPlaceHolder1_txtcustpackege"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control" placeholder="Package Name" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustbal" type="text"
										id="ContentPlaceHolder1_txtcustbal" disabled="disabled"
										tabindex="3" class="aspNetDisabled form-control"
										placeholder="Account Balance" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtcustlastpay"
										type="text" id="ContentPlaceHolder1_txtcustlastpay"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control" placeholder="Last Payment" />

								</div>
							</div>

							<div class="col-sm-6">
								<div style="margin-bottom: 20px">

									<input name="ctl00$ContentPlaceHolder1$txtlastrechargedate"
										type="text" id="ContentPlaceHolder1_txtlastrechargedate"
										disabled="disabled" tabindex="3"
										class="aspNetDisabled form-control"
										placeholder="Last Recharge Date" />

								</div>
							</div>
							<div class="col-sm-6"></div>




							<div class="col-sm-12" style="height: 1px"></div>

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
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>

						</div>

					</div>

				</div>

				<div class="modal fade" id="modalEdit" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">


							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Edit</h4>
							</div>
							<div class="modal-body">
								<div class="container">
									<div class="row">

										<div class="col-sm-10" style="margin-bottom: 10px">
											<div>
												<div class="col-sm-3">
													<p class="p1">Current Status :</p>
												</div>
												<div class="col-sm-6"></div>

											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<input type="submit" name="ctl00$ContentPlaceHolder1$btnok"
										value="Submit" id="ContentPlaceHolder1_btnok"
										class="btn btn-warning" />
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Cancel</button>


								</div>


							</div>
						</div>
					</div>

				</div>
				<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
				<script src="assets/js/jquery-1.10.2.js"></script>
				<script src="assets/js/bootstrap.js"></script>
				<script src="assets/js/bootstrap.min.js"></script>
				<script src="assets/js/pushy.js"></script>
				<script type="text/javascript">

        $(document).ready(function () {
            debugger;
            $('#ContentPlaceHolder1_rbselect').click(function () {

                var chk = $('#ContentPlaceHolder1_rbselect').find(":checked").val()

                if (chk == 0) {
                    $('#dash').show();
                    $('#comp').hide();
                    $('#counter').hide();
                }
                if (chk == 1) {
                    $('#comp').show();
                    $('#dash').hide();
                    $('#counter').hide();

                }
            });

            $('#ContentPlaceHolder1_txttodate').datepicker({ dateFormat: 'dd-mm-yy' });
            $('#ContentPlaceHolder1_txtfromdate').datepicker({ dateFormat: 'dd-mm-yy' });


        });


        function radioList() {
            debugger;
            var chk = $('#ContentPlaceHolder1_rbselect').find(":checked").val()
            if (chk == 0) {
                $('#dash').show();
                $('#comp').hide();
                $('#counter').hide();
            }
            if (chk == 1) {
                $('#comp').show();
                $('#dash').hide();
                $('#counter').hide();


            }

        }


        function PrintPanel() {
            var panel = document.getElementById("ContentPlaceHolder1_pnlPrint");
            var printWindow = window.open('', '', 'height=400,width=850');
            printWindow.document.write('<html><head><title>Pratikshat Solution</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>




			</div>



			<!-- Pushy JS -->

			<script src="/js/pushy.min.js"></script>
			<script src="/js/jquery-1.10.2.js"></script>
			<script src="/js/bootstrap.js"></script>
			<script src="/js/bootstrap.min.js"></script>
			<link
				href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css"
				rel="stylesheet" type="text/css" />
			<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

		</div>
	
	<%
		}
	%>
	<link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
