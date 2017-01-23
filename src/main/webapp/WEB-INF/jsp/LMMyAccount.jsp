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


</head>
<body
	<%if (session.getAttribute("lmlogin") == null) {
				System.out.print("session not found");
				response.sendRedirect("lmlogin.html?error=Session is Expired!!!");
			} else {
				System.out.print("session found");%>
	style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">

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


			<div class="container">
				<div class="col-sm-12">
					<p style="font-size: 20px">
						<b><span class="label label-default">My Account</span></b>
					</p>
				</div>
				<hr />
				<div class="col-sm-12">
					<div class="col-sm-6">
						<div class="col-sm-4">
							<p>Designation :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
						
						 <input name="designation"
								type="text" value="${Designation}"  readonly="readonly"
								id="designation" class="form-control" />
						</div>
						<div class="col-sm-4">
							<p>Name :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<input name="name" type="text"
								value="${Name}" readonly="readonly"
								id="name" class="form-control" />
						</div>
						<div class="col-sm-4">
							<p>Email Id :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<input name="email" type="text"
								value="<c:out value="${EmailId}"/>" readonly="readonly"
								id="email" class="form-control" />
						</div>
						
						<div class="col-sm-4">
							<p>Mobile No. :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<input name="mobile" type="text"
								value="${Mobile}" readonly="readonly"
								id="mobile" class="form-control" />
						</div>
						<div class="col-sm-4">
							<p>Landline No. :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<input name="landline_no" type="text"
								value="${LandLine}" readonly="readonly"
								id="landline_no" class="form-control" />
						</div>

					</div>
					<div class="col-sm-6">
						<div class="col-sm-12">
							<img id="ContentPlaceHolder1_imgphoto" class="form-control"
								src="assets/img/user.png"
								style="height: 210px; width: 210px;" />
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-6">
						<div class="col-sm-4">
							<p>Correspondence Address :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<textarea name="corres_add" rows="2"
								cols="20" readonly="readonly" id="corres_add"
								class="form-control">
${corres_add} </textarea>
						</div>
						<div class="col-sm-4">
							<p>Identity Proof. :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<input name="id" type="text"
								value="${ID }" readonly="readonly"
								id="identity_proof" class="form-control" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="col-sm-4">
							<p>Permanent Address :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<textarea name="permanent_add" rows="2"
								cols="20" readonly="readonly" id="permanent_add"
								class="form-control">
									${Per_add}</textarea>
						</div>
						<div class="col-sm-4">
							<p>Address Proof. :</p>
						</div>
						<div class="col-sm-8" style="margin-bottom: 5px">
							<input name="add_proof" type="text"
								value="${Add_id}" readonly="readonly"
								id="add_proof" class="form-control" />
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
		<!-- Pushy JS -->
			<script src="/js/pushy.min.js">
		</script>
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
