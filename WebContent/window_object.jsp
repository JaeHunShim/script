<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		/* 1. window 객체 생성 및 기본메소드 */
		/* 생성할때 첫번째는 url주소 2번째는 윈도우 이름, 세번째와 네번째 파라미터는 윈도우의 크기를 지정하는데 사용할수 있다. */
		/* MoveBy() */
 		var child = window.open('','',width = 300, hegiht = 300);
		
		child.document.write('<h1>글도 써서 같이 출력해보자<h1>');  
		child.moveTo(0,0);
		setInterval(function(){
			child.moveBy(10,10);
		},1000);
	
		/* 2.screen 객체 사용법 */
		/* 웹 브라우저의 화면이 아니라 운영체제 화면의 속성을 가지는 객체이다. */
		var child = window.open('','',width = 50, height = 50);
		var width = screen.width;
		var height = screen.height;
		child.moveTo(0,0);
		/* 브라우저의 화면이 꽉자게 보인다.*/ 
		child.resizeTo(width,height);
		
		setInterval(function(){
			child.resizeBy(-20,-20);
			child.moveBy(10,10)
		},1000);
		
		/* loaction 객체 속성과 메소드  */
		/* 페이지 이동방법에는 크게 이렇게 4가지가 있는데 이중에 assign,replace의 경우는 뒤로가기 버튼이 허용됮 않는다. */
		location = 'https://www.w3schools.com/';
		location.href ='https://www.w3schools.com/';
		
		ㅊ('https://www.w3schools.com/');
		location.replace('https://www.w3schools.com/');
		
		/* h1태그와 h2 태그가먼저 실행되고 이 함수가 실행되는 것을 볼수 있다 */
		window.onload = function(){
			alert('onload함수')
		}
		
	</script>
	<h1>이게 젤먼저 실행됨</h1>
	<h2>그담에 이거</h2>
</body>
</html>