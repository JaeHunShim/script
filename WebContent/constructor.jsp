
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- 생성자 만들어보기 -->
<!-- 즉 객체안의 함수들이 나 필드듣을 객체(this).해당이름 하면 메소드나 필드를 가지고 올수 있다.  -->
<script>
	function Students(name,korean,math,eng,science ){
		
		this.이름 = name;
		this.국어 = korean;
		this.영어 = eng;
		this.과학 = science;
		
		this.getSum = function(){
			
			return this.국어 +this.영어+this.과학;
		};
		this.getAverage = function(){
			
			return this.getSum()/4;
		};
		this.toString = function(){
			
			return this.이름 +'\t'+this.getSum()+'\t'+this.getAverage();
		};
	}
	var students =[];	
	students.push(new Students('재훈0',100,100,100,100));
	students.push(new Students('재훈1',100,100,100,100));
	students.push(new Students('재훈2',100,100,100,100));
	students.push(new Students('재훈3',100,100,100,100));
	students.push(new Students('재훈4',100,100,100,100));
	students.push(new Students('재훈5',100,100,100,100));
	
	var students =new Students('재훈5',100,100,100,100);
	
	var output ='이름\t총점\t\평균\n';
	for(var i in students){
		output += students[i].toString()+'\n';
	}
	alert(output);
	/* instanceof : 해당 객체가 어떤 생성자 함수로 만들어졌는지 알려준다.  */
	alert(students instanceof Students);
	alert('String' + students instanceof String);
	alert('Number' + students instanceof Number);
	alert('Boolean'+ students instanceof Boolean);
</script>
</body>
</html>