<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>교수 | Al소프트웨어학과</title>
<%@ include file="../link.txt"%>
<link rel="stylesheet" type="text/css" href="../../_res/knu/aisw/css/header.content7cd5.css" />


</head>
<body class=" aisw-site pc temp08">
<%@ include file="../menu.jsp"%>

<div class="container">					
	<p class="h2 font-weight-bold">교수</p>
	<br>

<nav class="text-right">
<a href="professor.jsp" class="btn btn-outline-success my-2 my-sm-0" title="목록">목록</a>
</nav>		
<hr>

		<div class="row">
			<div class="col-sm-2">
				<img alt="권세진 프로필 사진" src="https://aisw.kangwon.ac.kr/app/common/attach/image/thumb_268_1632460166000.do"  onerror="this.src='../../_res/knu/_share/img/board/img-faculty-default.gif'"/>
			</div>
			<div class="col-sm-10">
				<div>
					<ul>
						<li>
							<span>성명</span>
							<p>
								<span class="b-name">
									권세진
								</span>
								
									<span>조교수</span>							
							</p>
						</li>					
						<li>
							<span>연구분야</span>
							<p>
								<span>임베디드 시스템 / 소프트웨어, 비휘발성 메모리</span>
							</p>
						</li>										
						<li>
							<span>연구실</span>
							<p>
								<span>5공학관 415호</span>
							</p>
						</li>				  
							<li>
								<span>연락처</span>
								<p>
									<a href="tel:033-570-6377" title="전화걸기">033-570-6377</a>
								</p>
							</li>										
							<li>
								<span>이메일</span>
								<p>
									<a href="mailto:sjkwon@kangwon.ac.kr" title="메일 보내기">sjkwon@kangwon.ac.kr</a>
								</p>
							</li>
							<li>
								<span>홈페이지</span>
								<p>
									<a href="https://scholar.google.com/citations?user=XthdAdMAAAAJ&amp;hl=ko" target="_blank">https://scholar.google.com/citations?user=XthdAdMAAAAJ&hl=ko</a>
								</p>
							</li>												
					 </ul>
				</div>
			</div>
		</div>
<hr>		
				

</div>

<script type="text/javascript">
//<![CDATA[
	
	function iframeLoaded() {
	    var iFrameID = document.getElementById('reportFrame');
	    if(iFrameID) {
	          // here you can make the height, I delete it first, then I make it again
	          iFrameID.height = "0";
	          iFrameID.height = iFrameID.contentWindow.document.body.scrollHeight + 30 + "px";
	    }   
	    $("iframe").focus();
	}
	
	
	function changeTab(value){
		
		var type = value;
		
		var url = $("#iframeUrl").val();
		
		var makeUrl = makeIframeUrl( url, type );
		
		document.getElementById("reportFrame").src = makeUrl;
		
		$(".b-main-tab li").removeClass("active");
		$(this).parent().addClass("active");
			
		//var lebelText = $(".b-tab-sel option:selected").text();
		//$("#tab-select-label").text( lebelText   );
		
	}	
		
	function makeIframeUrl ( url, type ) {
		
		var tmp = url.toString().split("?"), makeUrl = tmp[0] + '?';
		
		if( typeof(tmp[1]) != 'undefined' ) {
			
			var s = tmp[1].toString().split('&'), idx = 0;
			
			for( var i = 0 ; i < s.length; i++ ) {
				
				strArr = s[i].split('=');
				
				if( strArr[0] != 'reportType') {
					
					if( idx != 0 ) {
						makeUrl = (makeUrl + '&');
						
					}
					
					idx += 1;
					makeUrl = (makeUrl + s[i]);
				}
			}
			
			makeUrl = (makeUrl + '&reportType=' + type);
			
		} else { 
			
			makeUrl = url + "&reportType=" + type;
			
		}
		
		return makeUrl;
	}
	
	$(function(){
		
		$(".tabLink").click(function(e){
			
			e.preventDefault();
			
			var type = $(this).attr("data-id");
			
			var url = $("#iframeUrl").val();
			
			var makeUrl = makeIframeUrl( url, type );
			
			document.getElementById("reportFrame").src = makeUrl;
			
			$(".b-main-tab li").removeClass("active");
			$(this).parent().addClass("active");
			
		});
		
		
		if( $(".b-main-tab li.active").length == 0 ){
			
			$(".b-main-tab li:first").addClass("active");
		}
		
		
	});
		

//]]>
</script>
 
<br>

<%@ include file="../footer.jsp"%>
</body>

</html>