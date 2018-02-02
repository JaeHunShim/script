<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!--1. for문으로 객체 값 보기  -->
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
		
/* 2. 객체 속성에 추가와 제거 여기서 this는 해당 객체를 뜻한다.  */
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
		
		/* 3. 객체를 쉽게 생성(함수로 지정해놔서 사용하면 쉽게 생성하고 써먹을수 있다.) */
		
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
		
		/*4. prototype 사용해보기: 생성자 함수로 생성된 객체가 공통으로 가지는 공간으로서  메소드 하나만 생성해도 모든 객체가 해당 메소드를 사용할수 있음   */
		
		function Person(firstName,lastName,age){
			
			this.firstName = firstName;
			this.lastName = lastName;
			this.age = age;
		}
		/* 이런식으로 메소드를 프로토타입으로 하나 생성해놓고 아무데서나 사용할수 있다.  */
		Person.prototype.name = function(){
			return this.firstName+''+this.lastName;
		}
		
		var myName = new Person('심','재훈',35);
		alert(myName.name());
		
		/* 5. 캡슐화 : 잘못 사용될수 있는 객체의 특정부분을 사용자가 사용할수 없게끔 만드는 기술이라고 정의 할수 있다 (getter,setter)*/
		
		function Rectangle(w,h){
			
			var width = w;
			var height = h;
			
			//메소드 선언
			this.getWidth = function(){
				return w;
			}
			this.getHeight = function(){
				return h;
			}
			this.setWidth = function(w){
				if(w<0){
					throw '음수는 넣으면 안됩니다.';
				}else{
					width = w;
				}
			};
			this.setHeight = function(){
				if(h<0){
					throw '음수를 넣으면 안됩니다.';
				}else{
					height = h;
				}
			}
		}
		Rectangle.prototype.getArea = function(){
			return this.getWidth() * this.getHeight();
		}
		var rectangle = new Rectangle(5,4);
		
		
		rectangle.setWidth(7); /* 음수를 넣어서 오류가남  */
		rectangle.setHeight(5);
		console.log(rectangle.getWidth());
		console.log(rectangle.getHeight());
		alert('넓이 :' + rectangle.getArea());
		
		/* 상속해보기  */
		/* 위에 Rectangle을 상속받아서 사용하면 따로 또 프로토 타입을 만들지 않아도된다. */
		function Square(length){
			this.base = Rectangle;
			this.base(length, length);
		}
		Square.prototype = Rectangle.prototype;
		Square.prototype.constructor = Square;
		
		var rectangle = new Rectangle(4,7);
		var square = new Square(5)
		
		alert(rectangle.getArea() +':' + square.getArea());
	</script>
</body>
</html>