<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../link.txt"%>
<title>학사안내 > 교육과정 게시판목록 | Al소프트웨어학과</title>
</head>
<body>
	<%@ include file="../menu.jsp"%>
	<div class="container">
		<p class="h2 font-weight-bold">교육과정</p>
		<br>

		<div class="curriculum-top-box">
			<div>
				<p>
					좀 더 자세한 교육과정은 KNU 교육과정 사이트에 <br>상세하게 나와있습니다.
				</p>
				<a href="https://curriculum.kangwon.ac.kr/" target="_blank"
					title="새창열림"><span>KNU 교육과정 바로가기</span></a>
			</div>
		</div>
	</div>
	<%@ include
		file="/project/aisw/community/freeboard/freeboard_list2.jsp"%>
	<%@ include file="../footer.jsp"%>
</body>
</html>