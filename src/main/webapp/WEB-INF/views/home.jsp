<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<head>
	<title>Home</title>
	<link rel="stylesheet"  type="text/css" media="screen,print" href="resources/css/login.css" />
	<script type="text/javascript" src="resources/js/jquery-1.11.0.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log("gggg");
			 //로그인 버튼	 
			$("#loginLabel").click(function(e) {
				//보통 <a> 에 click 이벤트를 등록할 때 <a href="#"> 를 사용하게 된다. href="#" 는 click 이벤트가 처리되고 나서 페이지 맨위로 이동하게 하는 동작한다. 
				//이것을 막기 위해 event.preventDefault()를 사용하게 된다. 
				e.preventDefault();
			 
				if($('.loginbox').css('display')== 'none'){				
				    $('.loginbox').slideDown(); 
				}
				else {
		           $('.loginbox').slideUp();
				}
			});
		
		
		  //닫힘버튼
			$(".closeBtn").click(function(e) {
			 
				   $('.loginbox').slideUp();
		
			});				
		
		});
</script>
</head>
<body>
<ul id ="navi">

	<li>home</li>
	<li><a href="#" id="loginLabel">login</a>
		<div class="loginbox">
			<form action="login.jsp" method="post">
				<p>
					<label for ="logid">ID</label>
					<input type="text" name="logid" id="logid"/>
				</p>
				<p>
					<label for="logpw">password</label>
					<input type="password" name="logpw" id="logpw">
				</p>
				<p>
				</p>
				<p class="memberInfo">Forget | REgister</p>
				<p class="closeBtn" title="닫기버튼"></p>
			</form>
		</div>
	</li>
</ul>
<div id="content">
	<p> 본문</p>
	<img src="http://okjsp.pe.kr/images/bnr_openaudio_big.gif" usemap ="#mapSave" border="0"> 

	<map name="mapSave"> 
	<area shape="rect" coords="1, 18, 70, 40" href="javascript:alert('자바스크립트이름');" onfocus="this.blur();"> 
	</map>
</div>

</body>
</html>
