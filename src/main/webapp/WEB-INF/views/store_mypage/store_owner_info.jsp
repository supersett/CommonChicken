<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath }/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">

<!-- styles needed for carousel slider -->
<link href="${pageContext.request.contextPath }/assets/css/owl.carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/assets/css/owl.theme.css" rel="stylesheet">

<!-- Just for debugging purposes. -->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<!-- include pace script for automatic web page progress bar  -->

<script>
	paceOptions = {
		elements : true
	};
</script>
<script src="${pageContext.request.contextPath }/assets/js/pace.min.js"></script>
</head>
<body>
	
	<div id="wrapper">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="main-container">
			<div class="container">
				<div class="row">
					<div class="col-sm-3 page-sidebar">
						<aside>
							<div class="inner-box">
								<div class="user-panel-sidebar">
									<div class="collapse-box">
										<h5 class="collapse-title no-border">
											???????????? ??????????????? <a href="#MyClassified" data-toggle="collapse"
												class="pull-right"><i class="fa fa-angle-down"></i></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyClassified">
											<ul class="acc-list">
												<li><a class="active" href="${pageContext.request.contextPath}/store/owner">
												<i class="icon-home"></i> ????????? ?????? ??????</a></li>

											</ul>
											<ul class="acc-list">
												<li><a  href="${pageContext.request.contextPath}/store/info"><i
														class="icon-home"></i> ?????? ??????</a></li>

											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
									<div class="collapse-box">
										<h5 class="collapse-title">
											??????<a href="#MyAds" data-toggle="collapse" class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a  href="${pageContext.request.contextPath}/store/order">
												<i class="icon-docs"></i> ?????? ?????? </a></li>
											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											??????<a href="#MyAds" data-toggle="collapse" class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a  href="${pageContext.request.contextPath}/store/productlist">
												<i class="icon-docs"></i> ??????????????? </a></li>
											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
									<div class="collapse-box">
										<h5 class="collapse-title">
											?????? ??????<a href="#Review" data-toggle="collapse"
											class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/store/review"><i class="icon-heart"></i> ?????? </a></li>
												
											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											?????? ??????<a href="${pageContext.request.contextPath}/store/commonlist" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="MyAds">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/store/commonlist"><i class="icon-heart"></i>?????? ?????????</a></li>
												
											</ul>
										</div>
									</div>
									<div class="collapse-box">
										<h5 class="collapse-title">
											????????? ?????? <a href="#TerminateAccount" data-toggle="collapse"
												class="pull-right"></a>
										</h5>
										<div class="panel-collapse collapse in" id="TerminateAccount">
											<ul class="acc-list">
												<li><a href="${pageContext.request.contextPath}/store/out"><i
														class="icon-cancel-circled "></i> ???????????? </a></li>
											</ul>
										</div>
									</div>
									<!-- /.collapse-box  -->
								</div>
							</div>
							<!-- /.inner-box  -->

						</aside>
					</div>
					<!--/.page-sidebar-->

					<div class="col-sm-9 page-content">
						<div class="inner-box">
							<div class="row">
								<div class="col-md-5 col-xs-4 col-xxs-12">
									<h3 style="padding-top: 13px;" class="text-center-480 useradmin">
										<img class="userImg" src="${pageContext.request.contextPath }/images/${storeOwner.memUpload }" alt="??????">${storeOwner.memName }
<!-- 										<img class="userImg" src="images/user.jpg" alt="user"/> Jhon Doe 
 -->									</h3>
								</div>
<!-- 								<div class="col-md-7 col-xs-8 col-xxs-12">
									<div class="header-data text-center-xs">

										Traffic data
										<div class="hdata">
											<div class="mcol-left">
												Icon with red background
												<i class="fa fa-eye ln-shadow"></i>
											</div>
											<div class="mcol-right">
												Number of visitors
												<p>
													<a href="#">7000</a> <em>visits</em>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>

										revenue data
										<div class="hdata">
											<div class="mcol-left">
												Icon with green background
												<i class="icon-th-thumb ln-shadow"></i>
											</div>
											<div class="mcol-right">
												Number of visitors
												<p>
													<a href="#">12</a><em>Ads</em>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>

										revenue data
										<div class="hdata">
											<div class="mcol-left">
												Icon with blue background
												<i class="fa fa-user ln-shadow"></i>
											</div>
											<div class="mcol-right">
												Number of visitors
												<p>
													<a href="#">18</a> <em>Favorites </em>
												</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div> -->
							</div>
						</div>

						<div class="inner-box">
							<div class="welcome-msg">
								<h3 class="page-sub-header2 clearfix no-padding"></h3>
								<div id="accordion" class="panel-group">
									<form class="form-horizontal" id="memberModify" name="memberModify" method="post" enctype="multipart/form-data">
									<input type="hidden" name="memOrigin" value="${storeOwner.memOrigin }">
									<input type="hidden" name="memUpload" value="${storeOwner.memUpload }">
									
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseB1" data-toggle="collapse"> ??? ?????? </a>
											</h4>
										</div>
										<div class="panel-collapse collapse in" id="collapseB1">
											<div class="panel-body">
													<div class="form-group">
														<label class="col-sm-3 control-label">?????????</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" id="memEmail" name="memEmail" value="${storeOwner.memEmail }" readonly="readonly">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">??????</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" id="memName" name="memName" value="${storeOwner.memName }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">?????????</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" id="memNickname"  name="memNickname" value="${storeOwner.memNickname }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">????????????</label>
														<div class="col-sm-5">
															<input type="text" class="form-control" id="memBirthday"  name="memBirthday" value="${storeOwner.memBirthday }">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">????????? ??????</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" id="memPhone" name="memPhone"  value="${storeOwner.memPhone }">
														</div>
													</div>
													<!-- ?????? api -->
													<div class="form-group">
														<label class="col-sm-3 control-label">??????</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" id="sample3_postcode" name="memZipCode" placeholder="????????????" value="${storeOwner.memZipCode }">
															 <input type="text" class="form-control" id="sample3_address" name="memAdd1" placeholder="??????" value="${storeOwner.memAdd1 }"> 
															 <input type="text" class="form-control" id="sample3_detailAddress"  name="memAdd2" placeholder="????????????" value="${storeOwner.memAdd2 }"> 
															 <input type="text" class="form-control" id="sample3_extraAddress" placeholder="????????????">
														</div>
													</div>


													<div class="form-group">
														<label for="Phone" class="col-sm-3 control-label">????????? ??????</label>
														<div class="col-sm-9">
															<img src="${pageContext.request.contextPath }/images/${storeOwner.memUpload }" alt="??????">
															<input type="file" name="file" class="form-control" >
														</div>
													</div>

													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9"></div>
													</div>
													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9">
															<button type="button" id="btnModify1" class="btn btn-default">??????</button>
														</div>
													</div>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a href="#collapseB2" data-toggle="collapse"> ???????????? ?????? </a>
											</h4>
										</div>
										<div class="panel-collapse collapse" id="collapseB2">
											<div class="panel-body">
													<div class="form-group">
														<div class="col-sm-12"></div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">??? ????????????</label>
														<div class="col-sm-9">
															<input type="password" id="memPw" name="memPw" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">???????????? ??????</label>
														<div class="col-sm-9">
															<input type="password" id="memPw2" name="memPw2" class="form-control"
																placeholder="">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-offset-3 col-sm-9">
															<button type="button" id="btnModify2" class="btn btn-default">??????</button>
														</div>
													</div>
											</div>
										</div>
									</div>
								</form>

								</div>
								<!--/.row-box End-->

							</div>
						</div>
						<!--/.page-content-->
					</div>
					<!--/.row-->
				</div>
				<!--/.container-->
			</div>
		<!-- /.wrapper -->
		<!-- Le javascript
================================================== -->

		<!-- Placed at the end of the document so the pages load faster -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
			
		</script>
	
	<script type="text/javascript">
	
/* 	var memName = document.getElementById("memName");
	var memNickname = document.getElementById("memNickname");
	var memBirthday = document.getElementById("memBirthday");
	var memPhone = document.getElementById("memPhone");
	var sample3_detailAddress = document.getElementById("sample3_detailAddress"); */
	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;	
	
		$(document).ready(function() { 
			$('#btnModify1').click(function() {
				var result = confirm('?????? ?????????????????????????');
				if(result) { 
					if ($("#memName").val()=="") {
						alert("????????? ????????? ?????????.");
						$("#memName").focus();
						return;
					}

					if ($("#memPhone").val()=="") {
						alert("??????????????? ????????? ?????????.");
						$("#memPhone").focus();
						return;
					}

					if ($("#memBirthday").val()=="") {
						alert("??????????????? ????????? ?????????.");
						$("#memBirthday").focus();
						return;
					}
					if ($("#sample3_detailAddress").val()=="") {
						alert("?????? ????????? ????????? ?????????.");
						$("#sample3_detailAddress").focus();
						return;
					}
					$('#memberModify').submit();  
				} else { 
					alert('??????');
				} 
			})
			
			$('#btnModify2').click(function() {
				var result = confirm('?????? ?????????????????????????');
				if(result) { 
					if (memberModify.memPw.value == "") {
						alert("??????????????? ???????????????.");
						signinForm.memName.focus();
						return;
					}
					if (memberModify.memPw2.value == "") {
						alert("??????????????? ?????? ??? ???????????????.");
						signinForm.memName.focus();
						return;
					}
					
					if (!pwdCheck.test(memPw.value)) {
						alert("??????????????? ?????????+??????+???????????? ???????????? 8~25?????? ???????????? ?????????.");
						memPw.focus();
						return false;
					}
					
					if (memPw2.value !== memPw.value) {
						alert("??????????????? ???????????? ????????????");
						memPw2.focus();
						return false;
					}
					$('#memberModify').submit();  
				} else { 
					alert('??????');
				} 
			})
		});
	</script>
		
		<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.min.js"></script>

		<!-- include carousel slider plugin  -->
		<script src="${pageContext.request.contextPath }/assets/js/owl.carousel.min.js"></script>


		<!-- include equal height plugin  -->
		<script src="${pageContext.request.contextPath }/assets/js/jquery.matchHeight-min.js"></script>

		<!-- include jquery list shorting plugin plugin  -->
		<script src="${pageContext.request.contextPath }/assets/js/hideMaxListItem.js"></script>

		<!-- include jquery.fs plugin for custom scroller and selecter  -->
		<script src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.scroller/jquery.fs.scroller.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/jquery.fs.selecter/jquery.fs.selecter.js"></script>
		<!-- include custom script for site  -->
		<script src="${pageContext.request.contextPath }/assets/js/script.js"></script>
	

<!-- 	<script type="text/javascript">

$("#repasswdForm").submit(function() {
	var submitResult=true;
	
	var pwReg=/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,20}$/g;
	if($("#member_repassword").val()=="") {
		$("#Msg").text("??????????????? ????????? ?????????.");
		submitResult=false;
	} else if(!pwReg.test($("#member_repassword").val())) {
		$("#Msg").text("?????? ????????????/?????? ?????? 6~20??????");
		submitResult=false;
	} 
	
	if($("#repw").val()=="") {
		$("#Msg").text("???????????? ????????? ????????? ?????????.");
		submitResult=false;
	} else if($("#member_repassword").val()!=$("#repw").val()) {
		$("#hMsg").text("??????????????? ???????????? ????????? ???????????? ????????????.");
		submitResult=false;
	}
	return submitResult;
});
</script> -->
	
	
</body>

</body>
</html>
