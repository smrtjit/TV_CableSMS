


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
	<form method="post" action="./complaint.aspx" id="form1">
		<div class="aspNetHidden">
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="TG7tecZH5cmhKCZcL5WOHlfchpDMpiCRWa8yfWN3pwcvMulK/dg4HabChhPuhAjKgH/skpfiV+eXg0R9DY/kDa8rN3DsFZy6r0H7ftbAtK1MZlNsiOATlDkzZ7Mb47N3HZUpHB7ehoVIb1PQOzCCKPymA1kuJzzZNE7I2W09e/US+x/+tQ4pJYfLmR9r3U35Q10OfzoDpaAYmJj0ppMBAze2dmEdcMNQ+bNF1zst4SJ8KwiGZ7bdV1890xPdPqllr//uYrq3n+QATbdvcrSCOF1t/boMIwqkehRvOgiezWE5RHHYUYIBVdWdRZ/Z1YbMyGGEjOFPzQeQwrP5e5nDaNlS7pyL12Vl0fB1LixVsbjxvGec+qOBJFdppI0g3PL1wv2IneTEZJkFYELgajuba/qj5p7VrPZF5+6fe0oa+FeZ9MYkm6UAIRjdAZYllWJluevsXqy3sgjHXHELGlPf3fPmMcX5gjVNSz3kiOcVGuReTPY4NDXtDxi5c3IeKgSqN2cIHdeGNM5PDxyBkXD5SNY6KIWEcKU0xyzH8EOiTLIIwz7Ghp0w+9h64L+www0TejeP4YErkhT1xF6g1JdboYTLCEE2qKGlKl60rbJq05U54XHlhzjAUFtMcZwMn1fnH5Jk5lz6f58y5rsb/KE+d/6kUoHTCkICAvbEdK4/IlSRba0esnQxcNPdnFTjhzKhq/CpS9xz8SQsgcaxtp7+G0or4SmLuCCSGht0hJmlJMA=" />
		</div>

		<div class="aspNetHidden">

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="D2B997D5" /> <input type="hidden"
				name="__EVENTVALIDATION" id="__EVENTVALIDATION"
				value="QsLXrZvwBJjk3Vzro3KTJWyjvEFcUqmVawM/28LlmTIYMIqumGJxA65UOAdPCY3A0GBl0ynKmzaEVsCdZmDUjc8PA7ZeJviGs8Lfszr2i7liXacplwjB32BdSMUv2gzR1CwcLmvEt2nUS+i0CAObS8E/Nhmcss6yIXX13UEF4phst10VxdIWFpXKSbltAbu4snOnH995TNXDQT80/XWt1la//F0AFR08c9ELicui0mdrHWEkTSuTSwZ/nJ2lQvjk5LkAQJ1aBG/l0wEfqZEgNc5R0JdraLMkJQpBrw3JeOTSAtvyAELre32mvJr1df7W" />
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
					<p style="font-size: 20px">
						<b><span class="label label-danger">Complaint</span></b>
					</p>
				</div>
				<hr />
				<div class="row">
					<div class="col-sm-2">
						<div style="margin-bottom: 10px">
							VC No.: <input name="ctl00$ContentPlaceHolder1$txtvc" type="text"
								value="87777" id="ContentPlaceHolder1_txtvc" disabled="disabled"
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
							<br /> <input type="submit"
								name="ctl00$ContentPlaceHolder1$btn_search" value="Submit"
								id="ContentPlaceHolder1_btn_search" tabindex="4"
								class="btn-primary btn btn-block" />

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
								<tr>
									<td>1</td>
									<td>87777</td>
									<td>Not Working</td>
									<td>2017-01-07 18:37:02</td>
									<td>OPEN</td>
									<td>tttt</td>
									<td>NA</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>2</td>
									<td>87777</td>
									<td>STB Problem</td>
									<td>2017-01-05 12:32:57</td>
									<td>OPEN</td>
									<td>TEST</td>
									<td>NA</td>
									<td>&nbsp;</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</form>
</body>
</html>
