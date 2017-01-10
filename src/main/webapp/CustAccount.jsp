


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><meta name="description" content="Pushy is an off-canvas navigation menu for your website." /><meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/jquery-1.10.2.js"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/circle.css" rel="stylesheet" />

    <style type="text/css">
        .p1 {
            font-style: initial;
            /*font-weight: bold;*/
            font-size: 15px;
        }
    </style>
</head>
<body style="background-color: #eeeeee;">
    <form method="post" action="./myaccount.aspx" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="WoAfP5MgEFbcxjXWKi/WaoZrAlVfF31814iLihaVX2X7MYXsA0QV5I5VjmUlahiP1pK4UjmRyElXkPIFyJ3hkqdXzaDCF3uNJywBYsi+JJrQg5d48dLVcKBI/fVfTcSaCRix2DqnA5gx9Cxy3pX4DUlif6BEZAzm5QLUXV0k85avq4B4jXqXjhVaOQXiSJIsyMvyX4bbRK/bveeZQjg2aLNWkLmP7A18dIkvI6tpDQqVL+vViRq8zqcFynJh4z4p9TT3tRPRfXJKjhivy5BP1PGz7avnKmrYOmt813yeNCC0yAal+eDV4V6WG9OTy841A5bc/zJLME9nF/uZeMj/S8WipOrZuXkwSlTirdhudV1Wr+RtHHJwpCJF3H7nhTn7jWukPuNf/rRNH1wwbuhpiw==" />
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


<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="039A0BBB" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="LzspmvwDIGcSv02CIj51kwtgdyg5WYeQBCxLkw7RX575QaleazCRiVVNWRNqkNoKcZ0dJVDzcll6UXHxDGugZcy+rTEDbklwwWNQwl9A7ifT+ATXrVegCeN6i3kcZN0NvusubuIrN+LqRjq3rwk8j/4GY7S3EqE+e9fyll9pqCmwjLmxY52lQMy5xtW9ph/A" />
</div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">My Cable TV </a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="CustAccount.jsp">My Account</a></li>
                    <li><a href="CustComplaint.jsp">Complaint</a></li>
                    <li><a href="Custrecharge.jsp">Recharge</a></li>
                    
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li><a href="logout.html"><span></span><b>Log Out</b></a></li>
                </ul>
            </div>
        </nav>

        <div>
            
    <div class="container">
        <div class="col-sm-12">
            <p style="font-size: 20px"><b><span class="label label-success">My Account</span></b></p>
        </div>
        <hr />
		<div class="row">

			<div class="col-sm-7" style="background-color: #eeeeee; border-radius: 10px;">
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Name</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblname" class="form-controlc">Ankit</span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">VCNO.</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblvcno" class="form-controlc">87777</span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">STB NO.</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblStb" class="form-controlc">7656320789001</span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Current Package</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblcurrentpackage" class="form-controlc">Hindi Punjabi</span>
						</div>
						
					</div>
				</div>

				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Account Balance</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblamaunt" class="form-controlc"></span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Last Payment</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblLastPay" class="form-controlc"></span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Recharge Amount</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblRechargeAmount" class="form-controlc">299</span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Recharge Date</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblRechargeDate" class="form-controlc">Tuesday, January 10, 2017</span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Mobile No.</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblmobile" class="form-controlc">9559404556</span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
							<a id="ContentPlaceHolder1_LinkButton9" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$LinkButton9&#39;,&#39;&#39;)">Edit</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Email Id</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<span id="ContentPlaceHolder1_lblemail" class="form-controlc">ankit@gmail.com</span>
						</div>
						<div class="col-sm-2" style="margin-top: 10px">
							<a id="ContentPlaceHolder1_LinkButton10" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$LinkButton10&#39;,&#39;&#39;)">Edit</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-4" style="margin-top: 5px">
						<p class="p1">Address</p>
					</div>
					<div class="col-sm-8">
						<div class="col-sm-8" style="margin-bottom: 10px">
							<textarea name="ctl00$ContentPlaceHolder1$txtAddress" rows="2" cols="20" id="ContentPlaceHolder1_txtAddress" class="form-control" style="height:100px;width:230px;">
Flat No. 16/3 Vardhman Block-5, South Bengal 713144</textarea>
						</div>
						
					</div>
				</div>

			</div>
			<div class="col-sm-5">
				<div class="row">
					<div class="col-sm-12">
						<img src="assets/img/promo1.jpg" class=" img-rounded img-responsive" />
						<br />
					</div>
					<div class="col-sm-12 ">
						<img src="assets/img/promo2.jpg" class="img-rounded img-responsive" />
					</div>
				</div>
			</div>
		</div>
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4 jumbotron">
					<img src="assets/img/discount1.jpg" class="img-rounded img-responsive"  style="border:1px solid #888;"/></div>
                <div class="col-sm-4 jumbotron">
					<img src="assets/img/discount2.jpg" class="img-rounded img-responsive" style="border: 1px solid #888;" /></div>
                <div class="col-sm-4 jumbotron">
					<img src="assets/img/discount3.jpg" class="img-rounded img-responsive" style="border: 1px solid #888;" /></div>
            </div>
        </div>
    </div>

        </div>
    </form>
</body>
</html>
