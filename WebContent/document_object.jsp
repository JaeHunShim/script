<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 원래 있던 태그들을 읽으며 생성하는 것을 정적으로 문서객체를 생성하는 것이고, 원래 html 페이지에는 없던 문서객체를 생성하는 것을 동적문서객체를 생성한다라고할수 있다. -->
	<!-- 1.1 문서 객체 만들기 --> 
	<!-- 정적으로 요소 태그를 생성하고 text노드를 생성하고 요소태그와 노드를 서로 연결하는 작업 -->
	<script>
	window.onload = function(){
		var header = document.createElement('h1');
		var textnode = document.createTextNode('Hello');
		/* 요소태그에 textnode를 추가하고 */
		header.appendChild(textnode);
		/* body안에 안에 넣어준다 */
		document.body.appendChild(header);/* Hello라는 택스트 출력 */
		
		var img = document.createElement('img');
		img.src = 'jaehun.jpg';
		img.width = 500;
		img.height = 300;
		
		document.body.appendChild(img);
	/* 1.2 가장 쉬운방법으로 문서객체 만들기(innerHtml) */
 		var output ='';
		
		output += '<ul>';
		output +=	'<li>Hello</li>';
		output +=	'<li>JavaScript</li>';
		output +=	'<li>JQuery</li>';
		output += '</ul>';
		
		document.body.innerHTML = output;
		/* 복합 대입 연산자로 추가할수도 있다. */
 		document.body.innerHTML += '<h1>Hello JavaScript</h1><br>';
	/* 1.3 이미 만들어져있는 문서객체를 가지고 오기  getElementById */
 		var header1 = document.getElementById('header-1');
		var header2 = document.getElementById('header-2');
		
		header1.innerHTML ='Header1 바꾸기';
		header2.innerHTML ='Header2 바꾸기';
	/* getElementId는  한가지 객체만 가지고 온다. 한번에 여러가지 객체를 가져올때는 이런식으로 사용하면된다.  */
	/* getElementByName : 태그속성의 name을 가지고온다. getElementByTagName: 태그속성의 값을 가지고온다. */
	/* 태그의 id, name,tagName 뿐만 아니라 css를 선택자로 가지고올수도 잇다.document.querySelector, document.querySelectorAll(배열로 가지고옴) */
	/* css속성까지 추가해서 바꾸어줄수도 있다.  .style로 ~*/
		var headers = document.getElementsByTagName('h1');
		for(var i =0; i<headers.length;i++){
			headers[i].innerHTML = '배열로 가지고와서 바꾸어보자 ';
			headers[i].style.border ='2px solid black';
			headers[i].style.color = 'red';
			headers[i].style.fontFamily ='helvetica';
			headers[i].style.backgroundColor ='pink';
		}
	/* 문서객체 제거하기 */
		var remove = document.getElementById('remove')
		document.body.removeChild(remove);
		
	};

		
	
	</script>
</head>
<body>
<!-- 1.1 문서객체 생성 -->
<!-- 태그를 자바스크립트에서 이용할수 있는 객체로 만들면 그것이 문서 객체이다. 예를들면 -->
<!-- <h1 id = "header"></h1> -->
	<h1 id='header-1'> Header1</h1>
	<h1 id='header-2'> Header2</h1>
	<h2 id = 'remove'> Header3</h2>
</body>
</html>