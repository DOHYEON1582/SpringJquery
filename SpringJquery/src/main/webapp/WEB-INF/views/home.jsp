<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>
	<!-- 
		라이브러리 추가시 버전충돌 주의!
		-> 부트스트랩 탬플릿에는 Jquery가 일반적으로 포함되어 있음
	 -->
	
	
	<!-- Jquery 라이브러리 추가 -->
	<!-- <script src="resources/js/jquery-3.7.1.min.js"></script> -->
	
	<!-- Jquery 라이브러리 추가(CDN) -->
	<!-- <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script> -->	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	<!-- Jquery 사용 -->
	<script type="text/javascript">
		// Jquery 사용 준비 완료
		$(document).ready(function(){
			//alert('Jquery 실행')
			
		});
		
		$(function(){
			//alert('Jquery 실행2')
		});
	
	</script>
	
	<script type="text/javascript">
		$(function(){
			//선택자
			$('*').css('color','black'); // 전체 선택자 *
			$('h1').css('color','red');	 // 태그 선택자 태그명
			
			$('#hello').css('color','green'); // 아이디 선택자 #아이디
			$('.itwill').css('color','blue'); // 클래스 선택자 .클래스명
			
			// input 태그의 입력값 색상 변경
			$('input').css('color','orange');
			
			// 속성탐색 선택자
			$('input[type=text]').css('color','red');
			//$('input[type=password]').css('color','blue');
			$('input[type^=p]').css('color','blue');// 속성의 이름이 시작되는 값으로 구분
			
			
			// 위치 탐색 선택자
			$('input').css('background','yellow');
			
			$('input:first').css('background','red');
			$('input:last').css('background','blue');
			
			$('input:odd').css('background','red'); // 홀수
			$('input:even').css('background','blue'); // 짝수
			
			////////////////////////////////////////////////////////////////////////////////
			// 속성값 가져오기
			var c = $('h2').css('color');
			//alert(c); // rgb(0,0,0) 검정  rgb(255,255,255) 흰색
			
			// 속성값을 변경하기1
			$('h2').css('color','blue');
			
			// 속성값을 변경하기2 (각각의 색상변경)
			var colorArr = ['red','green','yellow'];
			
			$('h2').css('color',function(idx){
				//alert(idx);
				return colorArr[idx];
			});
			
			// 속성값을 변경하기3 (글자색 -black,배경색-yellow 동시에 변경)
			//$('h2').css('color','black');
			//$('h2').css('background','yellow');
			$('h2').css({
				'color':'black',
				'background':'yellow'
			});
			
			// 배경색 - black, 글자색 - 배열사용 변경
			$('h2').css({
				'background':'black',
				'color':function(idx){
					return colorArr[idx];
				}
			});
			
			// 이미지 태그의 가로길이 통일
			//$('img').css('width','200px');
			//$('img').css('height','200px');
			// attr() 요소의 속성값을 변경
			$('img').attr('width','200px');
			$('img').attr('height','200px');
			
			// 테두리(border) 적용 각각 다른 사이즈 5, 10, 15
			$('img').attr('border',function(idx){
				return (idx+1)*5;
			});
			
			
			
			
		});//Jquery
	
	</script>
	
	<script type="text/javascript">
		// 자바스크립트 실행
		//alert('hello!')
	</script>
</head>
<body>
<h1 id="hello">
	Hello world!  
</h1>
<h1 class="itwill"> ITWILL Busan! </h1>

<hr>
아이디 : <input type="text" name="id"> <br>
비밀번호 : <input type="password" name="pw">

<hr>

<P>  The time on the server is ${serverTime}. </P>

<hr>

	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
<hr>
	<img src="https://naverpa-phinf.pstatic.net/MjAyNDAxMTZfMTE1/MDAxNzA1Mzc1MDg3NTM1.z-j3GvHg7DkR18VeX9gYonhuDcuWZpB5QdWI_mwuXYsg.3_ftDFI_M9z8p9DOi5UCrOa56wgVPpRC4EROHwsf9MEg.JPEG/2_170537508752413982910718536449134.jpg">
	<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fpost.phinf.naver.net%2FMjAxOTA1MTdfMjM2%2FMDAxNTU4MDgxMDA3MjY3.tVpthzodTNX56AlOPce3d-z_mGnoBZSWZr_SfhRl1Kog.VJFDP4hvf02XvRGD0brcC2hzGGqT853uvugRtb3wG8cg.JPEG%2FIBn9ab5m25V-XtvBL3w1gADXBwhY.jpg&type=a340">
	<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Ft1.daumcdn.net%2Fthumb%2FR1280x0%2F%3Ffname%3Dhttp%3A%2F%2Ft1.daumcdn.net%2Fbrunch%2Fservice%2Fuser%2F2UGU%2Fimage%2FBF9rSpuNRmOj621Jsz9tIlhWP1o.jpg&type=a340">

</body>
</html>
