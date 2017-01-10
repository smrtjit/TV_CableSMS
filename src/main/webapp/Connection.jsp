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
    </style>
</head>
<body style="background-image:url(assets/img/back_img.jpg); no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover; font-family: initial;">
    <form method="post" action="./connection.aspx" id="form1" enctype="multipart/form-data">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

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


<script src="/WebResource.axd?d=pynGkmcFUV13He1Qd6_TZKFFXDUgfU-UBi18bCzN2i8L8PXrGrr6FjdHQr3cBNEzRsJNDUE1GktavLtDxtDl1Q2&amp;t=636104529900000000" type="text/javascript"></script>


<script src="/ScriptResource.axd?d=NJmAwtEo3Ipnlaxl6CMhvl5RPGwiZk4IhiUb_fBMxxy3w24mdz1bRqpu2Tx6WXC7wzgLEKx2Uze1RGB4TIdZBCRYWsnky0yqlji6UbT6UMsMxwU8nE9xa4WdNI3ZYgtVUABIuH3yscl-YuTyXVnXXNmgZpthxma-XTavzibu-Vw1&amp;t=ffffffffc45b034e" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=dwY9oWetJoJoVpgL6Zq8OH0Sw-M4qzmZwT9bsg3n62-gOKiVwa9UCtjFUFX-MpMNFolFCkukdkkG0wDCoiXn4NuwfsJz-AWKjjH8hirPHQw006vVvWwxHha230iF_qCTZZzNf-bCZKOAMjMSmxWMQ9iQPtOU8werOASQNLJTDAU1&amp;t=ffffffffc45b034e" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CAE2C864" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="huzzUu0/YeH4YRlxWJw4loJnA4jVRNgIQ2Qtt5xFOs6YvHfW1ieidKUyQiGVXH4ZwqrSv7+GuMRZyZtqiQsQJx1+mYv1kL3NiH2ol3AxYKlMaQSm9/OXo2ylidEjdceA7wpC8sIRNt3G//Na2eAAnkBmUwrAOIGFbwdVNe+kNQ2kdGbbhsJumYyf40rwc0D2qDweP1yXiWzt3liecMJn8DMEUx/+ENowNzZW/sXG74TkH6tNWkrAacVNoXqugsV5wuPI07Lm0WwZP6hV3pOrtEcyMocRtd1JPCkX09hUSDxKZzw0ZqzOJOaBq20yFYB0HDUm8NlJbYtLFENlxdG1RjJOUF50rG7VDrkyndxz85tiinrHtOxn1MWWaRon79Xa44XiKLsTsaZpMq6DaYxUNqhzT+IquSZiT4mDxDtAS3dKZ2hWx8mXzuNi21SrtxylPSTBw+TbU1n4/gzF6gdxfOhHWwln7zcQq9scVCAPxr9AcNK5ZgSjFpE3/V65hBYpPwVuNpR4AezSJ0VXGUcZSB/3fGZpJcr0CAV9HJT4zoeaRRBKzf4qZE1eRvTJ094Bi29fWk10fEI1chMSv0LRGCXEN6OR8rhNB94HGJFW/rs+feh0FGQbmx/AD0bUtPBZgSHg2EtxS4wcKTKo5qmODoVwi0ub1q8u+Os07VymLuUShMvsa8aJ5hRg0Ix5hfQSchpP/TIIN59iKie3SfbspAcqbeT8Wc/s9Jhda5iWbmN7gXQ8CfGZyadFPKfzLfCGOZtRXJ0hkJS+UyQTKnDUVWnBr4BC8+jYJqNPISJf1DClwqnSkGQYH0n9vLGtd51/wj/h6e6rtveT2+ocRjAjaaCEkuDxs3MWy33Drjg7PliriKmMYt9uAOeyLwkfWLhDHvAqvZNVAUZJvE47t4hM0ruL/nm53bE1DALM6LRv072LP8n1fObRlLTJC4AqFmvvJy2cxZp7KTrN4+n0XW9MRBrIVewHEp9FRAFHZEmCeK7T0vMK128bFbdLtQhGtKO0bObhEy7mk0pXX+aOPl2jBQ==" />
</div>
        <div>
            <header class="site-header push">
                <marquee>Welcome to Cable TV Show</marquee>
            </header>
            <!-- Pushy Menu -->
            <nav class="pushy pushy-left">
                <ul>
                  	<!--menu iteam code -->
				<li class="pushy-link"><a href="#"></a></li>
				<li class="pushy-link"><a href="Dashboard.jsp">Complaint</a></li>
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
				<li class="pushy-link"><a href="MyAccount.jsp">My Account</a></li>
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
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ScriptManager1', 'form1', ['tctl00$ContentPlaceHolder1$upd1','ContentPlaceHolder1_upd1','tctl00$ContentPlaceHolder1$msgbox','ContentPlaceHolder1_msgbox'], [], [], 90, 'ctl00');
//]]>
</script>

    <div class="row">
        <div class=" col-md-4 col-md-offset-4">
            <table id="ContentPlaceHolder1_rbselect" class="form-control">
	<tr>
		<td><span class="radio-inline"><input id="ContentPlaceHolder1_rbselect_0" type="radio" name="ctl00$ContentPlaceHolder1$rbselect" value="0" /><label for="ContentPlaceHolder1_rbselect_0">New Connection</label></span></td><td><span class="radio-inline"><input id="ContentPlaceHolder1_rbselect_1" type="radio" name="ctl00$ContentPlaceHolder1$rbselect" value="1" checked="checked" /><label for="ContentPlaceHolder1_rbselect_1">Old Connection</label></span></td>
	</tr>
</table>
        </div>
    </div>
    <hr />
    <div id="new" style="display: none">

        <div class="container">
            <div class="row">

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">
                        <input name="ctl00$ContentPlaceHolder1$txtcustname" type="text" id="ContentPlaceHolder1_txtcustname" tabindex="1" class="form-control" placeholder="Customer Name" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">
                        <input name="ctl00$ContentPlaceHolder1$txtcustadd" type="text" id="ContentPlaceHolder1_txtcustadd" tabindex="2" class="form-control" placeholder="Customer Address" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustmobilenumber" type="text" id="ContentPlaceHolder1_txtcustmobilenumber" tabindex="3" class="form-control" placeholder="Customer Mobile No." />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustEmailid" type="text" id="ContentPlaceHolder1_txtcustEmailid" tabindex="4" class="form-control" placeholder="Customer Email-ID" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustid" type="text" id="ContentPlaceHolder1_txtcustid" tabindex="5" class="form-control" placeholder="Customer ID No." />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustsbtno" type="text" id="ContentPlaceHolder1_txtcustsbtno" tabindex="6" class="form-control" placeholder="Customer STB No," />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input type="file" name="ctl00$ContentPlaceHolder1$fupohoto" id="ContentPlaceHolder1_fupohoto" tabindex="7" title="Upload Photo" class="form-control" placeholder="Photo" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustvcno" type="text" id="ContentPlaceHolder1_txtcustvcno" tabindex="8" class="form-control" placeholder="Customer VC No." />

                    </div>
                </div>

                

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustVCwarantydate" type="text" id="ContentPlaceHolder1_txtcustVCwarantydate" tabindex="10" class="form-control" placeholder="VC Warranty Date" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustconnection" type="text" id="ContentPlaceHolder1_txtcustconnection" tabindex="11" class="form-control" placeholder="Connection Status" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">
                        <select name="ctl00$ContentPlaceHolder1$ddlpackage" id="ContentPlaceHolder1_ddlpackage" class="form-control">
	<option value="Select">SELECT</option>
	<option value="299/Month">299/Month</option>
	<option value="399/Month">399/Month</option>
	<option value="599/Month">599/Month</option>

</select>
                        
                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustBal" type="text" id="ContentPlaceHolder1_txtcustBal" tabindex="13" class="form-control" placeholder="Amount" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustparing" type="text" id="ContentPlaceHolder1_txtcustparing" tabindex="14" class="form-control" placeholder="Pairing Status" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">

                        <input name="ctl00$ContentPlaceHolder1$txtcustexpectdate" type="text" id="ContentPlaceHolder1_txtcustexpectdate" tabindex="15" class="form-control" placeholder="Expected Date Connection Go Live" />

                    </div>
                </div>

                <div class="col-sm-6">
                    <div style="margin-bottom: 20px">
                        <div class="col-sm-6">
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnsubmit" value="Submit" id="ContentPlaceHolder1_btnsubmit" class="btn btn-primary btn-block" style="font-weight:bold;" />
                        </div>
                        <div class="col-sm-6">
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btn_reset" value="Reset" id="ContentPlaceHolder1_btn_reset" disabled="disabled" tabindex="30" class="aspNetDisabled btn btn-default btn-block" style="font-weight:bold;" />
                        </div>


                    </div>
                </div>

                <div class="col-sm-12" style="height: 1px"></div>

            </div>
        </div>
        
    </div>

    <div id="old">

        <div id="ContentPlaceHolder1_upd1">
	
                <div class="row">
                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">
                            <input name="ctl00$ContentPlaceHolder1$txttodate" type="text" id="ContentPlaceHolder1_txttodate" tabindex="1" class="form-control" placeholder="From Date" />

                        </div>

                    </div>
                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">

                            <input name="ctl00$ContentPlaceHolder1$txtfromdate" type="text" id="ContentPlaceHolder1_txtfromdate" tabindex="2" class="form-control" placeholder="To Date" />

                        </div>
                    </div>


                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">
                            <input name="ctl00$ContentPlaceHolder1$txtsbtno" type="text" id="ContentPlaceHolder1_txtsbtno" tabindex="3" class="form-control" placeholder="STB No." />
                        </div>

                    </div>

                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">

                            <input name="ctl00$ContentPlaceHolder1$txtvcno" type="text" id="ContentPlaceHolder1_txtvcno" tabindex="4" class="form-control" placeholder="VC No." />
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">
                            <input name="ctl00$ContentPlaceHolder1$txtmobile" type="text" id="ContentPlaceHolder1_txtmobile" tabindex="5" class="form-control" placeholder="Mobile No." />

                        </div>

                    </div>

                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">
                            <select name="ctl00$ContentPlaceHolder1$ddlstatus" id="ContentPlaceHolder1_ddlstatus" tabindex="6" class="form-control">
		<option value="0">Select</option>
		<option value="1">Pending</option>
		<option value="2">Live</option>
		<option value="2">Expire</option>

	</select>

                        </div>

                    </div>
                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">
                            <input name="ctl00$ContentPlaceHolder1$txtpackage" type="text" id="ContentPlaceHolder1_txtpackage" tabindex="7" class="form-control" placeholder="Package Name" />

                        </div>

                    </div>


                    <div class="col-sm-3">
                        <div style="margin-bottom: 10px">

                            <input type="submit" name="ctl00$ContentPlaceHolder1$btn_submit_request" value="Search" id="ContentPlaceHolder1_btn_submit_request" tabindex="30" class="btn-success btn btn-block" />


                        </div>

                    </div>

                </div>



                <div class="col-sm-12">
                    <hr />
                    <div class="col-sm-12">
                        <div style="margin-bottom: 0px">
                            <p>
                                Total Count :
                            <span id="ContentPlaceHolder1_lblcount" style="font-weight:bold;">23</span>
                            </p>
                        </div>
                    </div>
                    <div>
		<table class="table table-striped table-bordered table-hover fontsize" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_gvdash" style="width:100%;border-collapse:collapse;">
			<tr>
				<th scope="col">SN</th><th scope="col">Account_ID</th><th scope="col">VC_No</th><th scope="col">Customer_Name</th><th scope="col">Customer_Email</th><th scope="col">Connection_Status</th><th scope="col">Create_Time</th><th scope="col">Action</th><th scope="col">Action</th>
			</tr><tr>
				<td>
                                    1
                                </td><td>9559404556</td><td>87777</td><td>Ankit</td><td>ankit@gmail.com</td><td>LIVE</td><td>1/5/2017 12:32:22 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_0" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_0" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl02$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    2
                                </td><td>9832469432</td><td>900003</td><td>Deepak</td><td>deepak@gmail.com</td><td>Live</td><td>1/5/2017 10:34:37 AM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_1" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_1" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl03$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    3
                                </td><td>7053450769</td><td>8292</td><td>Pramod</td><td>PK@gmail.com</td><td>LIVE</td><td>1/4/2017 4:47:50 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_2" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_2" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl04$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    4
                                </td><td>4785487891</td><td>5147821203</td><td>Asile Babu Ghosh</td><td>dahalsalik@hotmail.com; </td><td>Expire</td><td>1/3/2017 7:17:52 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_3" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_3" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl05$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    5
                                </td><td>9876543210</td><td>7845120369</td><td>Harish</td><td>rajanupreti@hotmail.com;</td><td>Live</td><td>1/3/2017 5:47:20 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_4" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_4" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl06$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    6
                                </td><td>9911152626</td><td>1258562233</td><td>Bankim Chatoorjee</td><td>htrahddis@hotmail.com;</td><td>Pending</td><td>1/3/2017 5:24:00 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_5" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_5" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl07$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    7
                                </td><td>8566311471</td><td>4986320142</td><td>Chandranath Bose</td><td>rafee90@hotmail.com;</td><td>Expire</td><td>1/3/2017 5:06:42 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_6" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_6" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl08$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    8
                                </td><td>5478569320</td><td>8526974301</td><td>Babu Ghosh</td><td>sujata@hotmail.com;</td><td>Live</td><td>1/2/2017 6:38:37 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_7" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_7" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl09$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    9
                                </td><td>9875526901</td><td>7896541230</td><td>Aishwarya Roi</td><td>uja_shakya@hotmail.com;</td><td>Expire</td><td>1/2/2017 6:38:37 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_8" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_8" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl10$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td>
                                    10
                                </td><td>8745693210</td><td>8965230147</td><td>Bankim Nath</td><td>sag_sameer@hotmail.com;</td><td>Live</td><td>1/2/2017 6:38:37 PM</td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnktEdit_9" class="aspNetDisabled btn-primary btn-sm btn btn-block">Edit</a>
                                </td><td>
                                    <a id="ContentPlaceHolder1_gvdash_LnkDetails_9" class="btn-primary btn btn-sm btn-block" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash$ctl11$LnkDetails&#39;,&#39;&#39;)">View/Print</a>
                                </td>
			</tr><tr>
				<td colspan="9"><table>
					<tr>
						<td><span>1</span></td><td><a href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$2&#39;)">2</a></td><td><a href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$gvdash&#39;,&#39;Page$3&#39;)">3</a></td>
					</tr>
				</table></td>
			</tr>
		</table>
	</div>

                </div>
            
</div>
    </div>


    <div class="modal fade bd-example-modal-lg" tabindex="-1" id="modalDetails" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
                                    <div class="col-sm-10">
                                           
                                    </div>

                                </div>
                            
	</div>

                        
</div>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnprint" class="btn btn-primary" onclick="return PrintPanel();">Print</button>
                    <a id="ContentPlaceHolder1_Lnktclose" class="btn btn-default" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$Lnktclose&#39;,&#39;&#39;)">Close</a>
                          
                </div>

            </div>

        </div>

    </div>

 
    <script type="text/javascript">

        $(document).ready(function () {
            debugger;
            $('#ContentPlaceHolder1_rbselect').click(function () {

                var chk = $('#ContentPlaceHolder1_rbselect').find(":checked").val()

                if (chk == 0) {
                    $('#new').show();
                    $('#old').hide();
                }
                if (chk == 1) {
                    $('#old').show();
                    $('#new').hide();

                }
            });

            $('#ContentPlaceHolder1_txttodate').datepicker({ dateFormat: 'dd-mm-yy' });
            $('#ContentPlaceHolder1_txtfromdate').datepicker({ dateFormat: 'dd-mm-yy' });
            $('#ContentPlaceHolder1_txtcustVCwarantydate').datepicker({ dateFormat: 'dd-mm-yy' });
        });


        function radioList() {
            debugger;
            var chk = $('#ContentPlaceHolder1_rbselect').find(":checked").val()

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
