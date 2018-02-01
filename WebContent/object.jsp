<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!--for문으로 객체 값 보기  -->
	<script>
		var product = {
				name:'jaehun',
				price:'1500000원',
				language:'한국어',
				subscription:true
		};
		out ='';
		for(i in product){
			out += i +':'+product[i] + '\n';
		}
		alert(out);
		
/* 객체 속성에 추가와 제거 여기서 this는 해당 객체를 뜻한다.  */
		var student ={};  /* 파이선에서 말하는 딕셔너리네용 */
		
		student.이름 = 'jaehun';
		student.성별 = 'men';
		student.특기 = 'programming';
		
		student.toString = function(){
			var out = '';
			for (var key in this){
				
				if(key !='toString'){
					out += key+'\t'+this[key]+'\n';
				}
			}
			return out;
		};
		alert(student.toString());
		
		/* 해당객체의 속성을 제거 한다. */
		delete(student.특기);
		alert(student.toString());
		
		/* 객체를 쉽게 생성(함수로 지정해놔서 사용하면 쉽게 생성하고 써먹을수 있다.) */
		
		/* 객체를 만드는 함수 */
		function makeStudent(name,guk,math,eng, science){
			
			var willReturn ={
					이름:name,
					국어:guk,
					수학:math,
					영어:eng,
					과학:science,
			
				getSum(){
					return this.국어 + this.수학 + this.영어 + this.과학;
				},
				getAverage(){
					return this.getSum() /4;
				},
				toString(){
					return this.이름 +'\t'+ this.getSum() +'\t' + this.getAverage();
				}
			};
			return willReturn;
		}
		var student =[];
		
		student.push(makeStudent('재훈',100,90,98,100));
		student.push(makeStudent('영서',20,30,40,50));
		student.push(makeStudent('영서3',90,31,42,53));
		student.push(makeStudent('영서4',70,36,45,54));
		
		var out = '이름\t총점\t평균\n';
		
		for(var i in student){
			
			out += student[i].toString() + '\n';
		}
		alert(out)
		
	</script>
</body>
</html>