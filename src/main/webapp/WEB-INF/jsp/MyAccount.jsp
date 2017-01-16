


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><meta name="description" content="Pushy is an off-canvas navigation menu for your website." /><meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/normalize.css" />
<link rel="stylesheet" href="assets/css/demo.css" />
<link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- Pushy CSS -->
    <link rel="stylesheet" href="assets/css/pushy.css" />
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    

    


    <style type="text/css">
        .p1 {
            font-style: initial;
            font-weight: bold;
            font-size: 16px;
        }
    </style>
</head>
<body style="background-image: url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
    <form method="post" action="#" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="r6AGeqFmF0nhSNoD5iYRPAAtKSvrUPfYXi/z4gS0zvZNZC1Lk8+FBcitDYpdVxkNPFrydcC7zn43JM+J2Dk8PgaCP90XIyDPTTKG+h9+TE4=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="04595DA2" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="2O/dUnwjMFM7Hki/wd3iP/y762z1D0GTSjLi02kD9fdRTCd7KOuKxGiyy1mTlo712Ad6FGxuEX9fiMOk34d+a0HSYgcb0Xe7wDS5fMWUmR5HcQMx05CsgO738j36p/yDXp9AUa2JLDXKunJ9QR4MaZCHmyvDUZ6xfnNuvddj3bo9lPY4t5G7WGnNTQ5sp/Cp9oZorbE1iE4pqDnroOItJXn6wFwbQ3NnaBoXeHsi64OCsHYKCHvPDW7Zi/I5TJx9ymxgZfZ/sLmyVHgAxZUCsAOzxCKBV1vT6dU98YlQgGr4s8DiF/BIma6CmLpi35HIY6v9pqQMH/lWm4pqY3EdQJn9E9Au9UxxElc3E/GGSFQftvQrfWmmxsU5cigSYe907i2tFwskdl58ruu5Gj9c4w4Cvw8FLdr7GAq5SUya810=" />
</div>
        <div>
            <header class="site-header push">
                <marquee>Welcome to Cable TV Show <%= request.getParameter("id") %></marquee>
            </header>
            <!-- Pushy Menu -->
            <nav class="pushy pushy-left">
                <ul>
                    
                   <!--menu iteam code -->
				<li class="pushy-link"><a href="#"></a></li>
				<li class="pushy-link"><a href="Dashboard.jsp?user=<%= request.getParameter("id") %>">Complaint</a></li>
				<li class="pushy-link"><a href="Connection.jsp">Connection</a></li>
				<li class="pushy-link"><a href="Collection.jsp">Collection</a></li>
				<li class="pushy-link"><a href="NewUser.jsp">Create User</a></li>
<!-- 				<li class="pushy-link"><a href="packages.jsp">Packages</a></li> -->
				<li class="pushy-link"><a href="TopUp.jsp">Top-UP</a></li>
				<li class="pushy-link"><a href="BulkBilling.jsp">Bulk-Billing</a></li>
				<li class="pushy-link"><a href="BulkTransaction.jsp">Bulk Transactions</a></li>
<!-- 				<li class="pushy-link"><a href="stock.jsp">Stock</a></li> -->
<!-- 				<li class="pushy-link"><a href="report.jsp">Reports</a></li> -->
<!-- 				<li class="pushy-link"><a href="notification.aspx">Notification</a></li> -->
				<li class="pushy-link"><a href="LCODetail.html?id=<%= request.getParameter("id") %>">My Account</a></li>
				<li class="pushy-link"><a href="logout.html">Log Out</a></li>
                </ul>
            </nav>

            <!-- Site Overlay -->
            <div class="site-overlay"></div>

            <!-- Your Content -->
            <div id="container">
                <!-- Menu Button -->
                <div class="menu-btn">&#9776; Menu</div>

                
    <hr />
    <div class="row">
        <div class="col-sm-12">
            <p style="font-size: 20px"><b><span class="label label-default">LCO Details:</span></b></p>
        </div>
        <div class="col-sm-12">
            <div class="col-sm-2"></div>
            <div class=" col-sm-5">
                <div class="col-sm-3">
                    <p class="p1">LCO Code</p>
                </div>
                <div class="col-sm-8">
                    <input name="ctl00$ContentPlaceHolder1$txtcode" type="text" value="${LCOCode}" readonly="readonly" id="ContentPlaceHolder1_txtcode" class="form-control" />
                </div>
            </div>

            <div class=" col-sm-5">
                <div class="col-sm-3">
                    <p class="p1">LCO Name</p>
                </div>
                <div class="col-sm-8">
                    <input name="ctl00$ContentPlaceHolder1$txtname" type="text" value="${LCOName}" readonly="readonly" id="ContentPlaceHolder1_txtname" class="form-control" />
                </div>
            </div>
        </div>

        <div class="col-sm-12">
            <p style="font-size: 20px"><b><span class="label label-default">User Details:</span></b></p>
        </div>
        <div class="col-sm-12">
            <div class="col-sm-2"></div>
            <div class=" col-sm-5">
                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">Login Id</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <input name="ctl00$ContentPlaceHolder1$txtloginid" type="text" value="${LoginID}" readonly="readonly" id="ContentPlaceHolder1_txtloginid" class="form-control" />
                </div>
                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">Middle Name</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <input name="ctl00$ContentPlaceHolder1$txtmname" type="text" value="${MiddleName}" readonly="readonly" id="ContentPlaceHolder1_txtmname" class="form-control" />
                </div>
                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">JV No.</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <input name="ctl00$ContentPlaceHolder1$txtjvno" type="text" value="${JVNum}" readonly="readonly" id="ContentPlaceHolder1_txtjvno" class="form-control" />
                </div>
            </div>

            <div class=" col-sm-5">


                <div class="col-sm-3" style="margin-bottom:"10px">
                    <p class="p1">First Name</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <input name="ctl00$ContentPlaceHolder1$txtfname" type="text" value="${Fname}" readonly="readonly" id="ContentPlaceHolder1_txtfname" class="form-control" />
                </div>
                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">Last Name</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <input name="ctl00$ContentPlaceHolder1$txtlname" type="text" value="${Lname}" readonly="readonly" id="ContentPlaceHolder1_txtlname" class="form-control" />
                </div>
                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">Direct No.</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <input name="ctl00$ContentPlaceHolder1$txtdirectno" type="text" value="${DirNum}" readonly="readonly" id="ContentPlaceHolder1_txtdirectno" class="form-control" />
                </div>

            </div>
        </div>

        <div class="col-sm-12">
            <p style="font-size: 20px"><b><span class="label label-default">BRM Details:</span></b></p>
        </div>
        <div class="col-sm-12">
            <div class="col-sm-2"></div>
            <div class=" col-sm-5">
                <div class="col-sm-3">
                    <p class="p1">BRM POID</p>
                </div>
                <div class="col-sm-8">
                    <input name="ctl00$ContentPlaceHolder1$txtpoid" type="text" value="${BRMPoid}" readonly="readonly" id="ContentPlaceHolder1_txtpoid" class="form-control" />
                </div>
            </div>

            <div class=" col-sm-5">
                <div class="col-sm-3">
                    <p class="p1">Account No.</p>
                </div>
                <div class="col-sm-8">
                    <input name="ctl00$ContentPlaceHolder1$txtaccount" type="text" value="${Account}" readonly="readonly" id="ContentPlaceHolder1_txtaccount" class="form-control" />
                </div>
            </div>
        </div>
 
   
        <div class="col-sm-12">
            <p style="font-size: 20px"><b><span class="label label-default">Contact Details:</span></b></p>
        </div>
        <div class="col-sm-12">
            <div class="col-sm-2"></div>
            <div class=" col-sm-5">
                <div class="col-sm-3">
                    <p class="p1">Mobile No.</p>
                </div>
                <div class="col-sm-8">
                    <input name="ctl00$ContentPlaceHolder1$txtmobile" type="text" value="${Mobile}" readonly="readonly" id="ContentPlaceHolder1_txtmobile" class="form-control" />
                </div>
            </div>

            <div class=" col-sm-5">
                <div class="col-sm-3">
                    <p class="p1">Email Id</p>
                </div>
                <div class="col-sm-8">
                    <input name="ctl00$ContentPlaceHolder1$txtemail" type="text" value="${Email}" readonly="readonly" id="ContentPlaceHolder1_txtemail" class="form-control" />
                </div>
            </div>
        </div>


        <div class="col-sm-12">
            <p style="font-size: 20px"><b><span class="label label-default">Address Details:</span></b></p>
        </div>
        <div class="col-sm-12">
            <div class="col-sm-2"></div>
            <div class=" col-sm-5">
                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">Address</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <textarea name="ctl00$ContentPlaceHolder1$txtadd" rows="2" cols="20" readonly="readonly" id="ContentPlaceHolder1_txtadd" class="form-control">
${Add}</textarea>
                </div>

                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">State</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <select name="ctl00$ContentPlaceHolder1$ddlstate" id="ContentPlaceHolder1_ddlstate" class="form-control">
	<option value="0">Select</option>
	<option value="0">West Bengal</option>

</select>
                </div>
            </div>

            <div class=" col-sm-5">
                <div class="col-sm-3" style="margin-bottom: 10px">
                    <p class="p1">City Name</p>
                </div>
                <div class="col-sm-8" style="margin-bottom: 10px">
                    <input name="ctl00$ContentPlaceHolder1$txtcity" type="text" value="${City}" readonly="readonly" id="ContentPlaceHolder1_txtcity" class="form-control" />
                </div>

                
            </div>
        </div>
    </div>


            </div>

            

            <!-- Pushy JS -->

            <script src="assets/js/pushy.min.js"></script>
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.16/themes/humanity/jquery-ui.css" rel="stylesheet" type="text/css" />
            <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        </div>
    </form>

    <link href="assets/css/circle.css" rel="stylesheet" />
</body>
</html>
