<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		//ajax()
		/* $.ajax({
			url:"전송페이지",
			type:"전송방식 GET/POST",
			data:"전송할 데이터",
			dataType:"응답 받을 데이터 타입(html,xml,text,json,...)",
			success:function(){
				// 페이지에 다녀온 것이 성공한 경우
				
			},
			error:function(){
				// 페이지에 다녀온 것이 실패한 경우
			}
		}); */
		
		$.ajax({
			url : "./resources/js/stringData1.jsp",
			type : "get",
			data : {"name":"홍길동"},
			success : function(data){
				//alert("stringData1.jsp 다녀옴!");
				//alert(data);
				$('body').append(data);
			}
		});// ajax
		
		$.ajax({
			url:"./resources/js/xmlData.xml",
			success:function(data){
				//alert("성공!");
				//alert(data);
				console.log(data);
				$(data).find("person").each(function(){
					  var name = $(this).find('name').text();
					  var gender = $(this).find('gender').text();
					  var addr = $(this).find('addr').text();
					  
					  $("#divXml").append(" 이름 : "+name+",성별 : "+gender+", 주소 : "+addr+"<hr>");
					
				});
				
			}
		});		
		
 		$.ajax({
			url:"./resources/js/xmlData.xml",
			success:function(data){
				//alert("성공!");
				//console.log(data);
				$(data).find("person").each(function(){
					var name = $(this).find('name').text();
					var gender = $(this).find('gender').text();
					var addr = $(this).find('addr').text();
					
					$('#divXml').append("이름 : "+name+"성별 : "+gender+"주소 : "+addr+"<hr>");
				});
			}
			
		});  
		
		$.ajax({
			url:"https://fs.jtbc.co.kr/RSS/sports.xml",
			success:function(data){
				alert("성공!");
				console.log(data);
				
				$(data).find('item').each(function(){
					var text = $(this).find("title").text();
					var link = $(this).find("link").text();
					
					$('body').append("<a href='"+link+"'>"+text+"</a><hr>");
		
				
				});
			}
		});
		
		// JSON데이터 불러오기
		$.ajax({
			url:"./resources/js/jsonData.json",
			success:function(data){
				//alert("JSON 성공!");
				console.log(data);
				$('body').append("<hr> JSON 데이터 : "+data.name+"<hr>");
				$('body').append("<hr> JSON 데이터 : "+data.age+"<hr>");
				$('body').append("<hr> JSON 데이터 : "+data.gender+"<hr>");
			}
		});
		
		//     주소,function(성공시 실행동작)
		$.getJSON("./resources/js/jsonData.json", function(data){
			$('body').append("<hr> JSON 데이터 : "+data.name+"<hr>");
			$('body').append("<hr> JSON 데이터 : "+data.age+"<hr>");
			$('body').append("<hr> JSON 데이터 : "+data.gender+"<hr>");			
		});
		
		// JSON배열 데이터 출력하기
		$.getJSON("./resources/js/jsonData2.json", function(data){
			//alert(data);
			$(data).each(function(idx,item){
				// 배열안에 객체를 하나씩 접근
				
				// 테이블에 내용을 추가
				$('table').append("<tr><td>"+item.name+"</td><td>"+item.age+"</td><td>"+item.gender+"</td></tr>");
				
			});
		});

		
		
		
		
		
		
		
		
	});//jquery
	


</script>

</head>
<body>
	<h1>string1.jsp</h1>
	
	<h2> 비 동기방식 데이터 처리  => Ajax(Asynchronous Javascript And Xml)</h2>
	
	<h3> 동기방식 : 서버에 요청을 보냈을때 응답이 돌아와야 다음 처리 가능(화면이동/깜빡) </h3>
	<h3> 비동기방식 : 서버에 요청을 보냈을때 응답과 상관없이 다음 처리 가능(별다른 변화X) </h3>
	<hr>
	<div id="divXml"></div>
	
	<h2>JSON(JavaScript Object Notation) : 자바스크립트 객체 표현식 </h2>
	
	<h3> 장점 </h3>
		단순 텍스트 형태로 저장(직관적) => 속성, 값 쌍으로 저장 (속성:값)
		데이터의 용량이 적음( HTTP 통신에 유리하다 )
		특정 플랫폼이나, 언어에 독립적이다.(어디든 사용 가능)
		대부분의 브라우저에서 JSON파서를 내장하고있음
	<h3> 단점 </h3>
		문법에 예민하다. (따옴표, 콤마, 콜론...)
		자바스크립트 기반 -> 악성코드를 포함 가능하다
	<hr>
	
	<h3> JSON 문법 </h3>
	* JSON 객체를 { } 표현
	* JSON 배열을 [ ] 표현
	* JSON 데이터는 "속성(key)":값(value) 표현
	
	* 값으로 사용 가능한 데이터 타입
	  정수(2진수,8진수,16진수X), 실수(고정소수점, 부동소수점), Boolean, 
	  null, 문자열데이터(""), 배열([]사용해서 표현)
	 
	  ** 날짜데이터 지원X(문자로 변경)
	
	<hr>
	
		<table border="1">
			<tr>
				<td>이름</td>
				<td>나이</td>
				<td>성별</td>
			</tr>
		</table>
		
	<hr>
	
	
	
	
	
	
		
	
	
	
	
	
	
</body>
</html>