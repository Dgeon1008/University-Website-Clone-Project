<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 | Al소프트웨어학과</title>
<%@ include file="../../link.txt"%>
<link rel="stylesheet" type="text/css"
	href="../../_res/knu/_share/css/loginac94.css" />
<link rel="canonical" href="https://aisw.kangwon.ac.kr:443/aisw/etc/login.do" />
<link defer rel="stylesheet" type="text/css" href="../../../cdn.jsdelivr.net/npm/xeicon%402.3.3/xeicon.min.css">
<link defer rel="stylesheet" type="text/css" href="../../_res/_common/css/cms.css" />
<link defer rel="stylesheet" type="text/css" href="../../_res/knu/_share/css/scroll.css" />
<link href="../../_res/knu/_share/css/cms-commonb50fb50f.css?66641" defer rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../_res/knu/_share/css/footer-default.widget87c587c5.css?14022" />
<link rel="stylesheet" type="text/css" href="../../_res/knu/_share/css/gnb-mobile.widget2fae2fae.css?42876" />

<link href="../../_res/knu/aisw/css/cms-common740a740a.css?37509" defer rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../_res/knu/aisw/css/title.content350a350a.css?73966" />
<link rel="stylesheet" type="text/css" href="../../_res/knu/aisw/css/header.content7cd57cd5.css?64928" />
<link rel="stylesheet" type="text/css" href="../../_res/knu/aisw/css/sub-navigation.contentf7d1f7d1.css?51771" />
<link rel="stylesheet" type="text/css" href="../../_res/knu/aisw/css/footer.content350a350a.css?73966" />
<link rel="stylesheet" type="text/css" href="../../_res/_common/css/toastr5b5c5b5c.css?50100" />
<link rel="stylesheet" type="text/css" href="../../_res/_common/js/jquery/jquery-ui-1.12.1/jquery-ui.min5b5c5b5c.css?50100" />
<link rel="stylesheet" type="text/css" href="../../_res/knu/_share/css/loginac94ac94.css?02447" />


<script type="text/javascript" src="../../_res/_common/js/jquery/jquery-2.2.4.min.js"></script>
<script defer type="text/javascript" src="../../_res/_common/js/jquery/jquery-ui-1.12.1.min.js"></script>

<script defer type="text/javascript" src="../../_res/_common/js/cms.js"></script>
<script defer type="text/javascript" src="../../_res/knu/_share/js/scroll.js"></script>
<script src="../../_res/knu/_share/js/cms-common034a034a.js?46272" defer type="text/javascript" ></script>
<script src="../../_res/knu/aisw/js/cms-common07aa07aa.js?73967" defer type="text/javascript" ></script>
<script defer type="text/javascript" src="../../_res/knu/aisw/js/header.content7cd57cd5.js?64928" ></script>
<script defer type="text/javascript" src="../../_res/knu/_share/js/footer-default.widget87c587c5.js?14022" ></script>
<script defer type="text/javascript" src="../../_res/knu/_share/js/gnb-mobile.widget2fae2fae.js?42876" ></script>
<script defer type="text/javascript" src="../../_res/knu/_share/js/pull-down-menu.widget9d669d66.js?00425" ></script>
<script defer type="text/javascript" src="../../_res/_common/js/toastr5b5c5b5c.js?50100" ></script>
<script defer type="text/javascript" src="../../_custom/knu/resource/js/member.login002e002e.js?91627" ></script>
<script defer type="text/javascript" src="../../_res/knu/_share/js/login15601560.js?16812" ></script>
</head>
<body class=" aisw-site pc temp08">
	<%@ include file="../../menu.jsp"%>
	<div class="container">
		<p class="h2 font-weight-bold">로그인</p>
		<br>

		<div class="ko board co-board common">
			<div>

				<div class="login-box">
					<ul>
						<li class="active"><a class="login-tab" href="#a"
							title="사용자 인증">사용자 인증</a>
							<div class="login-con-box login-con-box01 no-hp">
								<ul>
									<li><a href="#a" id="ssoLogin" title="K-Cloud 통합로그인">
											<p>
												K-Cloud<br>통합로그인
											</p> <span>강원대학교 재학생 및 <br>교직원 전용 통합 로그인
										</span>
									</a></li>


								</ul>
							</div></li>
						<li><a class="login-tab" href="#a" title="담당자 인증">담당자 인증</a>
							<div class="login-con-box login-con-box02">


								<div class="bn-login01 type01">
									<div class="b-login-wrap">
										<div class="b-login-top-box">
											<p>
												본 인증 서비스는 <span>홈페이지 담당자</span>를 위한 인증서비스입니다.
											</p>
										</div>
										<form
											action="https://aisw.kangwon.ac.kr/cms/login/loginProc.do"
											class="b-login-middle-box" name="loginForm" method="post">
											<fieldset class="b-login-zone">
												<legend class="hide">로그인</legend>
												<input type="hidden" name="referer" value="" /> <input
													type="hidden" name="site_id" value="aisw" />
												<div class="login-input-wrap">
													<div class="login-input-box">
														<div>
															<label class="hide" for="member_id">아이디</label> <input
																data-valid-title="아이디" type="text" id="member_id"
																class="jwvalid-must b-input" name="member_id"
																title="아이디" placeholder="아이디" />
														</div>
														<div>
															<label class="hide" for="member_pw">비밀번호</label> <input
																data-valid-title="비밀번호" type="password" id="member_pw"
																class="jwvalid-must b-input" name="member_pw"
																title="비밀번호" placeholder="패스워드" />
														</div>
													</div>
													<button class="btn-login" type="submit">로그인</button>
												</div>
											</fieldset>
										</form>
										<div class="b-login-bottom-box">
											<p class="info01">[안내] 아이디 및 비밀번호 분실 시 홈페이지 관리자에게
												문의해주십시오.</p>
											<p class="info02">&middot; 인증 실패 횟수가 5회 초과 시 해당 계정이
												사용정지(LOCK)됩니다.</p>
										</div>
									</div>
								</div>
							</div></li>
					</ul>
				</div>


				<form name="ssoLoginForm" id="ssoLoginForm" method="GET">
					<input type="hidden" name="return_url" value="" />

				</form>




			</div>
		</div>




	</div>
	<%@ include file="../../footer.jsp"%>
</body>

</html>