


<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="description"
	content="Pushy is an off-canvas navigation menu for your website." />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/jquery-1.10.2.js"></script>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/circle.css" rel="stylesheet" />

<style type="text/css">
table#ContentPlaceHolder1_gvcompHistory {
	background-color: #d5f7ce;
}
</style>
</head>
<body style="background-color: #eeeeee;">
<%
			if(session.getAttribute("custLogin")==null){
				System.out.print("session not found");
				response.sendRedirect("userlogin.html?error=Session is Expired!!!");
			}else{
				System.out.print("session found ****");
				%>
	
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">My Cable TV </a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="UserDetail.html?id=<%= request.getParameter("id") %>">My Account</a></li>
					<li><a href="CustComplaint.html?vcc=<%= request.getParameter("vc_no") %>">Complaint</a></li>
					<li><a href="CustRecharge.html?id=<%= request.getParameter("id") %>">Recharge</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li><a href="logout.html"><span></span><b>Log Out</b></a></li>

				</ul>
			</div>
		</nav>

		<div>

			<div class="container">
				<div class="col-sm-12">
					<p style="font-size: 20px">
						<b><span class="label label-danger">Complaint</span></b>
					</p>
				</div>
				<hr />
				<div class="row">
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							VC No.: <input name="ctl00$ContentPlaceHolder1$txtvc" type="text"
								value="<%= request.getParameter("vc_no") %>" id="ContentPlaceHolder1_txtvc" disabled="disabled"
								tabindex="1" class="aspNetDisabled form-control"
								placeholder="VC No." />

						</div>

					</div>
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							Complaint Type: <select
								name="ctl00$ContentPlaceHolder1$ddlcomplaint"
								id="ContentPlaceHolder1_ddlcomplaint" tabindex="2"
								class="form-control" placeholder="Responsibility">
								<option value="NA">Select</option>
								<option value="No Signal">No Signal</option>
								<option value="Not Working">Not Working</option>
								<option value="STB Problem">STB Problem</option>
								<option value="Bad Singnal">Bad Singnal</option>
								<option value="Channel Not Available">Channel Not
									Available</option>
								<option value="Others">Others</option>

							</select>

						</div>

					</div>
					<div class="col-sm-3">
						<textarea name="ctl00$ContentPlaceHolder1$txtRemarks" rows="2"
							cols="20" id="ContentPlaceHolder1_txtRemarks" tabindex="3"
							class="form-control" placeholder="Complaint Remarks">
</textarea>
					</div>
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							<br /> <input type="submit"name="ctl00$ContentPlaceHolder1$btn_search" value="Submit"id="ContentPlaceHolder1_btn_search" tabindex="4"class="btn-primary btn btn-block" />
							<input type="submit" name="saveComplaint.html?id=<%= request.getParameter("id") %>"value="Pay Now" id="ContentPlaceHolder1_btn_sbmit"class="btn btn-primary" />
	
						</div>
					</div>

				</div>
				<div class="col-md-12"></div>
				<hr />

				<div class="col-sm-12">
					<div class="col-sm-12">
						<div style="margin-bottom: 0px">
							<p>Previous Complaints</p>
						</div>
					</div>
					<div class="table-responsive">

						<div>
							<table
								class="table table-striped table-bordered table-hover fontsize"
								cellspacing="0" rules="all" border="1"
								id="ContentPlaceHolder1_gvcompHistory"
								style="width: 100%; border-collapse: collapse;">
								<tr>
									<th scope="col">SN</th>
									<th scope="col">VC No.</th>
									<th scope="col">Complaint Type</th>
									<th scope="col">Date of Complaint</th>
									<th scope="col">Status</th>
									<th scope="col">Remarks</th>
									<th scope="col">Closing Date</th>
									<th scope="col">Closing Remarks</th>
								</tr>
								
								<c:forEach items="${userList}" var="user">   
   								<tr>
   									<td>0</td>
   									<td>${user.customer_vcno}</td>
   									<td>${user.complaint_type}</td>
   									<td>${user.open_date}</td>
   									<td>${user.complaint_status}</td>
   									<td>${user.cust_remark}</td>
   									<td>${user.closing_date}</td>
   									<td>${user.closing_remark}</td>
									
								</tr>
								</c:forEach>
								
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</form>
	<%
    }
    %>
</body>
</html>
