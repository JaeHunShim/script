JavaSrcipt Basic
===
####**1. JQuery가 아니라 JavaSrcipt를 공부하게 된 이유**
  * JQuery 자체가 JavaSrcipt의 기능들을 좀더 쉽게 사용하기 위해서 만들어진 것이기 때문에 우선 기본을 먼저 어느정도 알고 넘어가야 할거 같아서 Jquery 전에 JavaSrcipt의 기본을 먼저 배우는게 맞다고 판단.(판단이 틀릴수도 있고..)
####**2. JavaSrcipt 가 나오면서 웹이 혁신적으로 바뀜**
  * JavaSrcipt가 나오기 전의 초기 웹은 변화되지 않는 적정인 글자들로만 꾸며졌다. 하지만 JavaSrcipt가 나오면서 그 내용들이 동적으로 바뀌게 되고 마우스를 클릭하는 것과 같은 이벤트 처리까지 할수 있게 되었다. 그리고 더 나아가 인터넷이 빨라지면서 웹 문서는 점점 더 많은 자료를 가질수 있게 되었고 , 그로 인해 웹은 그냥 일반 문서에 대한 개념이 아니라 어플리케이션의 모습에 더 가까워지게 되었다.
####**3. 공부 방향**
  * Java나 Python 에 대한 기본 개념을 알고 있기때문에 너무 기본적인 거 보다는 JavaScript에서 지원하는 기능들에 대해 초점을 맞추고 진행할 예정이다.
  * HTML이나 JavaSrcipt 와 JQuery 등 프론드엔드 쪽은 W3schools.com 에서 객체들과 함수들을 어떤형식으로 쓰는지 잘 알려져 있으니 이쪽을 참고하면서 알아가는 것이 좋을거 같다.
  * 기본적인 for문이나 if문 while 문등은  객체 생성이나 함수 사용하면서 다시한번 볼예정이므로 완전 기초는 생략!
  * 예시를 통해서 좀더 쉽고 빠르게 접근.
  * 해당 번호에 대한 소스도 올려 실행하면 결과를 볼수 있게함.
---
* #### 객체(Object) <object.jsp>  
  **1.for 문으로 객체 값 보기**

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

    * var product라는 객체를 생성했고, for문을 통해서 객체안에 있는 데이터를 순차적으로 뽑아노느 예제이다. 보면 알겠지만 크게 어려운 점은 없다. python에서 해봤던 for in을 사용해서 해당 객체의 값을 차례대로 뽑아오고 키값을 가지고 해당 value를 뽑아오게 된다.
    * **alert() : 브라우저에서 경고창을 생성한다.(print함수와 비슷하지!)**
---
  **2.객체 속성에 추가/제거**

      var student ={};  /* 파이선에서 말하는 딕셔너리네용

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

  		/* 해당객체의 속성을 제거 한다.
  		delete(student.특기);
  		alert(student.toString());

  * student 라는 객체 안에 이름 성별 특기라는 속성을 추가 하는데 객체의 이름으로된 함수를 하나 만들어서 안의 데이터를 읽어들이게 했다.
  여기서 중요한 것은 겍체안에 데이터를 넣고 삭제 할때는 delete라는 메소드를 사용하면 쉽게 지울수 있다는 것이다.
  * **delete(key): 해당객체의 키값으로 데이터를 삭제 할수 있다.**
---
  **3.객체를 함수를통해서 쉽게 생성해보기**

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

    * makeStudent 라는 함수를 만들어놓고 합계와 총점을 구하는 함수를 만들어놓고 자바스크립트에서 지원하는 내장함수인 push를 이용해서  파라미터안의 해당 데이터를 studnet라는 배열안에 넣는다.
    * **push() : 배열의 가장 마지막 위치에 해당 속성을 넣는다.**
---
  **4.prototype 사용하기**

      function Person(firstName,lastName,age){

        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
      }
      Person.prototype.name = function(){
        return this.firstName+''+this.lastName;
      }
      var myName = new Person('심','재훈',35);
      alert(myName.name());

   * **prototype: 생성자 함수로 생성된 객체가 공통으로 가지는 공간으로서  메소드 하나만 생성해도 모든 객체가 해당 메소드를 사용할수 있음**
   * 해당 객체로 프로토타입의 메소드를 하나 만들어 놓으면 아무곳에서나 사용할수 있다.
---
  **5.캡슐화**

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

         function Square(length){
           this.base = Rectangle;
           this.base(length, length);
         }
         Square.prototype = Rectangle.prototype;
         Square.prototype.constructor = Square;

         var rectangle = new Rectangle(4,7);
         var square = new Square(5)

         alert(rectangle.getArea() +':' + square.getArea());

  * 캡슐화: 잘못 사용될수 있는 객체의 특정부분을 사용자가 사용할수 없게끔 만드는 기술이라고 정의 할수 있다 . 여기서는 getter, setter 를 이용해서 캡슐화를 잠깐 보도록 한다. 혹여나 gettr, setter 가 캡슐화의 다라고 생각하는 사람들도 있다. 그러한 착각을 하지 않길 바란다.

  * 상속: 자바나 파이선에서 상속을 다루어 봤기때문에 따로 더 해보진 않을 것이다. new를 사용해서 객체를  생성해서 해고 객체 안에 있는 함수를 상속받아서 사용해봄~! (다 알고있는 내용이니 더 상세하게는 안함  더 알아보고 싶다면 [점프 투 파이선](https://wikidocs.net/280) 에서 더 자세히 알아볼 수 있다.  )
---
* #### 생성자(constructor) <constructor.jsp>

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

    * **instanceof: 해당 객체가 어떤 생성자 함수로 만들어졌는지 알려준다.타입의 경우는 typeof 라는 메소드가 있었는데 왜 굳이 이걸써? 라는 생각이 들수 있다. typeof 같은경우는 여기서 만든 student라는 객체로 만들어졌다는 것을 반환 하지 않는다 즉, tpyeof 를 사용했다면 instanceof 와는 다르게 그냥 object 타입이라는 것만 반환해 준다.**
