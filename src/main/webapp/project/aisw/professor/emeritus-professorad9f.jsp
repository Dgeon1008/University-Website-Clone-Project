<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>명예교수 | Al소프트웨어학과</title>
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
				<img alt="정란 프로필 사진" src="https://aisw.kangwon.ac.kr/app/common/attach/image/thumb_257_1632383446000.do"  onerror="this.src='../../_res/knu/_share/img/board/img-faculty-default.gif'"/>
			</div>
			<div class="col-sm-10">
				<div>
					<ul>
						<li>
							<span>성명</span>
							<p>
								<span class="b-name">
									정란							
							</p>
						</li>					
						<li>
							<span>연구분야</span>
							<p>
								<span>소프트웨어공학/데이터베이스/알고리즘</span>
							</p>
						</li>										
						<li>										
							<li>
								<span>이메일</span>
								<p>
									<a href="mailto:jungran@kangwon.ac.kr" title="메일 보내기">jungran@kangwon.ac.kr</a>
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