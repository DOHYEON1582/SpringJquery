<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>
	
	<style>
		h4{
			/* background-color: yellow; */
		}
		.high_0{background-color: red;}
		.high_1{background-color: yellow;}
		.high_2{background-color: green;}
		.high_3{background-color: blue;}
		.high_4{background-color: orange;}
		
	
	</style>
	
	
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
	
	<script>
		$(document).ready(function(){
			
//			h3 태그의 정보(값 value)를 변경 / test(),html()
//			$('h3').css();
//			$('h3').attr();
			var txt = $('h3').text(); // 해당하는 모든 요소의 값을 가져오기
			alert(txt);
			var html = $('h3').html(); // 해당하는 요소중에서 제일 처음 데이터만 가져오기
			alert(html);
			
//			$('#divh3').text(" 아이티윌! ");
//			$('#divh3').html(" 아이티윌! ");
			
//			$('#divh3').text(" <h3> 아이티윌! </h3> "); // 문자 데이터 그대로 입력
			$('#divh3').html(" <h3> 아이티윌! </h3> "); // 문자데이터 입력(태그인경우 적용해서 처리)
			
			$('#divh3').html(function(idx,old){
				alert(idx+"/"+old);
				// <h3> 아이티윌! 부산! </h3>
				return "<h3> 아이티윌! 부산! </h3>";
			});
			
			$('#divh3').html(" 3000 ");
			$('#divh3').html(function(old,idx){
				return idx+"원";
			});
			
			//$('body').append(" 안녕하세요! "); // html 태그가 적용, 요소 제일 끝에 데이터 붙이기
			$('h3').append(" 안녕하세요! "); //요소 제일 끝에 붙이기, 요소가 여러개일때 각각 처리
			
			$('h3').prepend(" <h2>안녕</h2> ");
			
			// 데이터 (2차원 배열)
			var con = [
						{'name':'학생1','addr':'부산'},
						{'name':'학생2','addr':'서울'},
						{'name':'학생3','addr':'대구'},
						{'name':'학생4','addr':'제주'},
						{'name':'학생5','addr':'광주'}
			];
			
			//alert(con);
			console.log(con);
			
			//$('tr').append('<td>@@@</td><td>@@@@</td>');
			//$('table').append('<tr><td>'+con[0].name+'</td><td>'+con[0].addr+'</td></tr>');
			
			for(var i = 0;i<con.length;i++){
				$('table').append('<tr><td>'+con[i].name+'</td><td>'+con[i].addr+'</td></tr>');
			}
			
			// each 구문 : 선택한 데이터를 순차적으로 접근
			//$(요소).each(function(){});
			//$.each(요소,function(){});
			
			$.each(con,function(idx,item){ // 인덱스,순차적으로 접근하는 요소
				//=> con배열에 순차적으로 접근
				
				// 테이블에 내용을 추가
				//$('table').append('<tr><td>'+con[idx].name+'</td><td>'+con[idx].addr+'</td></tr>');
				$('table').append(function(){
					// =>테이블의 내용을 뒤쪽에 추가할 때
					
					var outData = '<tr><td>';
						outData += item.name;
						outData += '</td><td>';
						outData += item.addr;
						outData += '</td></tr>';
					
					return outData;
				});
				
			});
			
			setInterval(function(){
				//console.log('ITWILL!');
				$(imgDiv).append($('img').first());
			},2000); // 2s
			
			
			// 특정 요소에 클래스명을 설정
			$('h4').each(function(idx){
				$(this).addClass("high_"+idx);
				// => this => '나' 자신 객체, 페이지에서 이벤트가 발생한 요소
			});
			
			// 이벤트 처리
			
			// h4 태그를 클릭할때 내용에 + 문자를 추가
			$('h4').click(function(){
				//alert(' 클릭 ');
				$(this).append('+');
			});
			
			
			$('#txtLength').css('background','white');
			
			$('textarea').keyup(function(){
				//alert('키보드입력');
				// 입력된 글자수 체크
				var txt = $('textarea').val(); // 입력된 글 내용 
				//alert(txt.length);
				
				// 200 - 입력된 글자수(길이) 값을 txtLength 아이디의 h2태그에 작성
				$('#txtLength').html(200-txt.length);
				
			});
			
			
			
			
		});
	
	</script>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <script>
      $(document).ready(function(){
        $(".slider").bxSlider();
      });
    </script>
	
	
	
</head>
<body>

    <div class="slider">
      <div>I am a slide.</div>
      <div>I am another slide.</div>
    </div>

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
	<div id="imgDiv">
		<img src="https://naverpa-phinf.pstatic.net/MjAyNDAxMTZfMTE1/MDAxNzA1Mzc1MDg3NTM1.z-j3GvHg7DkR18VeX9gYonhuDcuWZpB5QdWI_mwuXYsg.3_ftDFI_M9z8p9DOi5UCrOa56wgVPpRC4EROHwsf9MEg.JPEG/2_170537508752413982910718536449134.jpg">
		<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fpost.phinf.naver.net%2FMjAxOTA1MTdfMjM2%2FMDAxNTU4MDgxMDA3MjY3.tVpthzodTNX56AlOPce3d-z_mGnoBZSWZr_SfhRl1Kog.VJFDP4hvf02XvRGD0brcC2hzGGqT853uvugRtb3wG8cg.JPEG%2FIBn9ab5m25V-XtvBL3w1gADXBwhY.jpg&type=a340">
		<img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Ft1.daumcdn.net%2Fthumb%2FR1280x0%2F%3Ffname%3Dhttp%3A%2F%2Ft1.daumcdn.net%2Fbrunch%2Fservice%2Fuser%2F2UGU%2Fimage%2FBF9rSpuNRmOj621Jsz9tIlhWP1o.jpg&type=a340">
	</div>
	<hr>
	<h3>head - 0</h3>
	<h3>head - 1</h3>
	<h3>head - 2</h3>
	
	<div id="divh3"></div>
	
	<hr>
	<table border="1">
		<tr>
			<td>이름</td>		
			<td>지역</td>
		</tr>
	
	</table>
	
	<hr>
	<!--  해당 요소의 배경색을 모두 다르게 처리해 주세요. -->
	<h4> head-0 </h4>
	<h4> head-1 </h4>
	<h4> head-2 </h4>
	<h4> head-3 </h4>
	<h4> head-4 </h4>
	
	<hr>
	
	<h2 id="txtLength">200</h2>
	
	<textarea rows="5" cols="70">
		
	
	</textarea>
	
	
	
</body>
</html>
