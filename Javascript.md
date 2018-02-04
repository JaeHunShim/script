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
---

* #### 내장 객체 사용해보기(buit_in) <builtin_object.jsp>

**1. 문자열 관련 (String) 객체의 메소드 사용.**

        var charater = prompt('문자를 입력해주세요', '6글자 이상으로입력해주세요 ')

        if(charater.length < 6){
          alert('6글자 이상으로 입력해주세요');
        }else{
          alert('잘입력햇습니다.')
        }
        var string = 'Jae Hun Shim';
        var string2 ='good';

        var out ='';
          out += string.charAt(4)+'\n';
          out += string.concat(string2)+'\n';
          out += string.indexOf('e',4)+'\n';
          out += string.replace('h', 'H')+'\n';
          out += string.slice(3, 5)+'\n';
          out += string.split(" ",1)+'\n';
          out += string.substr(2, 4)+'\n';
          out += string.substring(2, 5)+'\n';
          out += string.toUpperCase()+'\n';
          out += string.toLowerCase();
          alert(out);

        var output = 'Hello jaehun';

        output = output.toLowerCase().substring(0,7).anchor('name');

        alert(output);

    해당 객체에 해당하는 메소드들이 어떤식으로 작동하는지에 대해서만 간단히 공부했다. Java 에서 쓰고 있는 기술들이랑 비슷해서 다시 한번 복습한다는 마음으로 한번씩 써보았음
    **length :** 해당길이를 가지고 온다.
    **charAt(position):** position에 위치하는 문자를 리턴합니다.
    **concat(args):** 매개변수로 입력한 문자열을 뒤에 붙여서 리턴한다.
    **indexOf(searchString, poistion):** 앞에서부터 일치하는 문자열의 위치를 리턴한다.position 은 start위치를 말한다.
    **replace(pattern,replacement):** pattern을 replacement로 바꾼다
    **slice(from,to):** from에서 부터 to 까지 추출해서 리턴한다.
    **split(pattern,limit):** pattern으로 문자열을쪼개서 리턴한다. limit는 몇개를 추출할지~!
    **substr(start,count):** start부터 count까지 문자열을 리턴한다. 공백은 해당문자열을 세는데 해당이 안된다.
    **substring(start,end):** start부터 end전까지 문자열을 리턴한다. 공백포함
    **toUpperCase():** 대문자로 리턴
    **toLowerCase():** 소문자로 리턴
**2. 배열열 관련 (Array) 내장 객체의 메소드 사용.**
  * 배열 생성에는 4가지 방법이 있다.

        var array1 = [1,2,3,4,5];
        var array2 = new Array();
        var array3 = new Array(10);
        var array4 = new Array(1,2,3,4,5);

        첫번째는 List안에 직접 값을 집어넣는 방법
        두번째는 Array 객체를 만들어서 직접 배열의 크기나 값을 넣어서 만들어 주는 방법이 있다.

        var array5 =['a','b','c','d'];

    			var output ='';
    			for(var i=0; i<array5.length;i++){
    				output +=  i+ ':' + array5[i]+ '\n';
    			}
    			alert(output);

    		var array =[45,66,78,94,3,5];
    		var array7 =['a','b','c'];

    		var output2 ='';
    		output2 += array.concat(array7)+'\n';
    		output2 += array.sort()+'\n';
    		output2 += array.reverse()+'\n';
    		output2 += array.join()+'\n';
    		output2 += array.pop()+'\n';
    		output2 += array7.push(999)+'\n';
    		output2 += array7.splice();
    		alert(output2);
    		alert(array7)

    딱히 어려운 점은 없었다 내장객체 부분에 관해서는 써보고 안써보고의 차이가 큰것이지 내부 객체안의 함수를 사용하는 부분에서는 크게 복잡한것이 없었고 Java와 비슷했기때문에 한번 써보면서 함수들의 기능에 대해서만 공부했다.

    **length:** 배열의 갯수를 알아내는데 사용
		**8concat():** 배열의 요소를 모두 합쳐서 배열을 만들어서 리턴함
		**join():** 배열안의 모든 요소들을 문자열로 바꾸어서 리턴한다.
		**pop():** 배열의 마지막 요소를 제거 하고 리턴한다.
		**push():** 배열의 마지막 부분에 새로운 요소를 추가
		**reverse():** 배열순서를 뒤집는다.
		**sort():** 배열의 요소를 정렬
		**splice():** 배열의 지정한 요소를 삭제하고 삭제한 요소를 리턴해줌 파라미터에 값을 주면 해당위치의 값을 몇개 삭제 할건지 지정해줄수 있음
  ---

  * **배열 안의 데이터를 삭제하는 방법**
    따로 삭제하는 객체나 함수가 존재 하지 않기 때문에  대부분이 따로 splice 함수를 사용해서 제거하는 함수를 생성해서 사용한다

        Array.prototype.remove = function(index){
    			this.splice(index, 1);
    		}

    		var array =[1,2,3,4,5]

    		for(var i = array.length -1; i>=0; i--){
    			if(array[i]>3){
    				array.remove(i)
    			}
    			console.log(array);
    		}
    		alert(array);
    여기서 눈여겨 볼곳은 반복문안에서 배열의 대한 데이터를 반대편에서부터 뽑아오는 것이다. 그이유는 splice를 하게대면 배열안의 데이터들이 한칸씩 땡겨지기때문에 삭제할때 제대로 지워지지가 않게 된다. 그러기때문에 뒤에서부터 데이터를 가지고 오는 것이다.
  ---

**3. 날짜 관련 (Date) 내장 객체의 메소드 사용.**

    Date.prototype.getInterval = function(otherDate){

      var interval;

    	if(this > otherDate){
    	   interval = this.getTime() - otherDate.getTime();
    	}else{
    		interval = otherDate.getTime()- this.getTime();
    	}
    	return Math.floor(interval/(1000*60*60*24));
    }
    	var current = new Date();
    	var before = new Date('December 9, 1991');

    	alert('당신이 계산한 날짜는 '+current.getInterval(before)+'일전입니다./후입니다.');

  Date 객체는 시간이나 날짜 에서부터 밀리세컨즈까지도 뽑아 올수 있다. 이를 이용해서 현재 날짜는 아니면 내가 원하는 날짜에 대한 데이터를 뽑아올수 있다.
  지금 함수는 현재날짜에서 내가 원하는 날짜까지 몇일이 남았는지 계산해 보는 메소드를 만들어 보았는데 . 파이선이나 자바에서 사용해봤던 것이라서 새로운 걸 한다기 보단 복습해본다는 생각으로 해보았다.
  **Math.floor():** 버림함수

---


**4. 반복 메소드(forEach)**
  * **forEach(elt,i,array):** for in 함수처럼 사용한다.  
  * **map() :** 배열에 특정규칙을 적용해서 새로운 배열을 만들수 있다.

    		var array = [1,2,3,4,5,6,7,8,9];

    		var sum  =0;
    		var out ='';
    		/* 일반적으로는 이런식  */
    		  for (var i =0; i<array.length; i++){
    			sum += array[i];
    			out += i+'번째'+array[i]+'합은'+sum+'\n';
    			}
    			alert(out)
    		/* forEach 쓰면 이런식  */
    		array.forEach(function(element, i, array) {
    			sum +=element;
    			out += i+'번째 '+element +'--->'+sum+'\n';
    		});
    		alert(out);
    		/* map()사용해 보기  */

    		var out = array.map(function(elt, i, array) {
    			return elt* elt;
    		})
    		alert(out)

      쉽게 직역해서 하면 array배열안에 있는 데이터값을 i만큼 반복해서 elt라는 변수에 차곡차곡 담는다. 라고 생각하면된다.
      map()함수는 array배열의 값을 바꾸는 것으로서 결과값을 확인해보면 결과값이 [1,4,9,...] 로 바뀌어 있는걸 확인 할수 있을것이다.

  ---

**5. 연산 메소드(reduce,reduceRight)와 JSON, 공백제거(trim)**

  * **reduce():** 배열의 요소가 하나가 될때까지 요소를 왼쪽부터 두개씩 묶는 함수
  * **reduceRight():** 오른쪽부터 두개씩 묶는 함수

        var array = [1,2,3,4,5];

    		var result = array.reduce(function(previousValue,currentValue) {
    			return previousValue+currentValue;
    		});
    		alert(result)

      잘 이해가 안갈수도 있겠지만 쉽게말해서 현재 array 배열에는 5개의 요소가 있는데 이것이 하나가 될때까지 요소를 왼쪽에서부터 하나씩 묶는것이다
      첫번째는 1,2를 묶고
      두번째는 (1+2),3을 묶고
      세번째는 (1+2+3),4를 묶고
      네번째는 (1+2+3+4),5를 붂고
      마지막은 (1+2+3+4+5) 가되어 하나의 요소가 될때까지 계속해서 묶는것을 말한다. 여기서 더한것은 result의 return 값이 두개의 파라미터로 받은것을 더하는 값을 리턴하기때문에 그런것이지 무작정 더한다는 의미가 아니다.


* **JSon객체로 바꾸고 JSon형태를 script형태로 바꿔보기(JSON.stringify(), JSON.parse())**

		var object ={
			name:'재훈',
			age:36,
			address:'경기도 수원시'
		};
		var json = JSON.stringify(object);
		alert(json);
		var script = JSON.parse(json);
		alert(script);

    JSON은 AJax로 데이터를 전송할때 많이 유용하게 쓰인다. 여기서는 그냥 잠깐 어떻게 사용하는지만 보고 뒷쪽을 공부하면서 자세하기 공부할 생각!

* **양쪽 공백 제거   trim()**

      var out =''
  		var test = '  jae huni ya    ';

  		out += test+'\n';
  		out += test.trim();
  		alert(out);
