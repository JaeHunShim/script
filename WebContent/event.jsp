<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	/* 이벤트 관련용어 정리 */
	/* onload를 이벤트 속성이라고하고 그 이벤트 속성에 할당한 함수를 이벤트 리스너라고 한다.  */
	window.onload = function(){
		//변수 선언
		header = document.getElementById('header')
		//이벤트 연결
		header.onclick = function(){
			alert('클릭하면 나오는거징~!');
		// 이벤트제거
		header.onclick = null;
		}
	/* 이벤트 처리는 우리가 알고 있는 6하원칙에 따라서 추적하면 쉽다 (누가, 언제, 어디서, 무엇을, 어떻게, 왜) */
	/* 1. 이벤트를 누가 발생시켰을까? 이벤트 리스너에 this를 사용하면 이벤트를 발생하는데 사용한 객체가 어떤것인지 알수 있다. */
		document.getElementById('headers').onclick = function(){
			alert(this);
			this.style.color ='red';
			this.style.backgroundColor ='pink';
		}
	/* 이벤트 강제 실행 */
		var buttona = document.getElementById('button1');	
		var buttonb = document.getElementById('button2');
		var counta = document.getElementById('count-a');
		var countb = document.getElementById('count-b');
		
		buttona.onclick = function(){
			counta.innerHTML = Number(counta.innerHTML)+1;
		};
		buttonb.onclick = function(){
			countb.innerHTML = Number(countb.innerHTML)+1
			buttona.onclick();
		};
		/* default 이벤트 제거 */
		
		document.getElementById('join').onsubmit = function(){
			
			//변수선언
			var password = document.getElementById('password').value;
			var password1 = document.getElementById('password1').value;
			// 값 비교
			if(password == password1){
				
				alert('가입성공');
			}else{
				alert('비밀번호가 일치 하지 않습니다.')
				return false;
			}
		}
		/* DOM Level2 Model */
		/* 한번에 여러가지의 이벤트 리스너를 추가할수 있다. */
		var myheader = document.getElementById('myheader');
		
		myheader.addEventListener('click', function() {
			myheader.innerHTML+= '+';
		});

	}
	/* 인라인 이벤트 (가장 기본적인 이벤트 처리 방식) */
	/* 태그안에 onclick 이벤트를 함수로 처리 해서 함수를 호출했을때  이벤트가 발생하는 형식 */
	function whenclick(e){
		alert('클릭이벤트 입니다.');
	}

</script>
</head>
<body>
	<h1 id = 'header'>click</h1>
	<h1 id = 'headers'>click</h1>
	<button id = 'button1'>button1</button>
	<button id = 'button2'>button2</button>
	<h2> button a- <span id = 'count-a'></span></h2>
	<h2> button b- <span id = 'count-b'></span></h2>
	<h3 onclick="whenclick(event)">click</h3>
	<h1 id = 'myheader'>click</h1>
	
	<form id ='join'>
		<label for='name'>이름</label>
		<input type = 'text' name = 'name' id = 'name'/><br>
		<label for='password'>비밀번호</label>
		<input type = 'password' name = 'password' id = 'password'/><br>
		<label for='password1'>비밀번호 확인</label>
		<input type = 'password' name = 'password1' id = 'password1'/><br>
		<input type = 'submit' value= '제출'/><br>
	</form>
</body>
</html>