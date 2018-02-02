<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		/* constructor을 이용해서 자료형 알아보기  그전에 typeof를 사용해서 해서하는것은 Object타입인건 알지만 정확히 어떤 객체를 참조하는지는 알수 없다.  */
		var numberFormatLiteral =273;
		var numberFormatObject = new Number(273)
		/* 이렇게 typeof 를 사용해  자료형 타입의 유무를 파악하려고 한다면 아무것도 나오지 않는 것을 볼수 있다. */
		if (typeof(numberFormatLiteral) == Number){
			alert('이것은 Number 객체타입입니다.');
		}
		if (typeof(numberFormatObject) == Number){
			alert('이것은 Number 개체로 만든 변수입니다.');
		}
		if(numberFormatLiteral.constructor == Number){
			alert('이것은 constructor을 사용해서 자료형 유무를 파악한 것입니다.');
		}
		if(numberFormatObject.constructor == Number){
			alert('이것은 constructor을 사용해서 자료형 유무를 파악한 것입니다.');
		}
		
		/* String 객체의 메소드 사용해보기  */
		/* length : 해당길이를 가지고 온다.
			charAt(position):position에 위치하는 문자를 리턴합니다.
			concat(args): 매개변수로 입력한 문자열을 뒤에 붙여서 리턴한다. 
			indexOf(searchString, poistion):앞에서부터 일치하는 문자열의 위치를 리턴한다.position 은 start위치를 말한다.
			replace(pattern,replacement): pattern을 replacement로 바꾼다
			slice(from,to): from에서 부터 to 까지 추출해서 리턴한다.
			split(pattern,limit):pattern으로 문자열을쪼개서 리턴한다. limit는 몇개를 추출할지~!
			substr(start,count): start부터 count까지 문자열을 리턴한다. 공백은 해당문자열을 세는데 해당이 안된다. 
			substring(start,end):start부터 end전까지 문자열을 리턴한다. 공백포함
			toUpperCase():대문자로 리턴
			toLowerCase():소문자로 리턴 
			*/
			
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
	</script>
	<script>
		/* Array객체 사용해보기  */
		
		/*1. Array 배열 생성하기  4가지 방법으로 생성할수 있다.   */
		var array1 = [1,2,3,4,5];
		var array2 = new Array(); /* 빈 배열을 만듬 */
		var array3 = new Array(10); /* 배열의 크기를 제한 */
		var array4 = new Array(1,2,3,4,5); /* 배열에 데이터를 넣는다.*/
		
		/* Array객체의 메소드를 사용해보기 */
		/* length: 배열의 갯수를 알아내는데 사용
			concat(): 배열의 요소를 모두 합쳐서 배열을 만들어서 리턴함
			join(): 배열안의 모든 요소들을 문자열로 바꾸어서 리턴한다.
			pop(): 배열의 마지막 요소를 제거 하고 리턴한다.
			push(); 배열의 마지막 부분에 새로운 요소를 추가
			reverse():배열순서를 뒤집는다. 
			sort():배열의 요소를 정렬
			splice():배열의 지정한 요소를 삭제하고 삭제한 요소를 리턴해줌 파라미터에 값을 주면 해당위치의 값을 몇개 삭제 할건지 지정해줄수 있음 
		*/
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
		
		/* Array안의 요소 제거 하기  (따로 제거하는 객체나 함수가 없기때문에 splice를 이용해서 따로 remove 함수를 만들어서 사용 ) */
		
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
		
		/* Date 사용해보기  */
		/* get과 set을 이루어져있고 말그래도 get은 년이나 월이나 일 등을 가지고 오고 set은 말그대로 년,일,월등을 내가 원하는 값을 넣어주는 거임 
			사용은 자바나파이선등 다른 언어에서도 비슷하게 사용하기 때문에 에제 하나만 통해서 해봄 
		*/
		/* 현재날짜가 크면 현재날짜 - 나중날짜  나중날짜가 크면 나중날짜 - 현재날짜 */
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
		
		/* 반복메소드 */
		/* forEach(elt,i,array): for in 함수처럼 사용한다.  
			map() :배열에 특정규칙을 적용해서 새로운 배열을 만들수 있다. 
		*/
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
		
		/* 연산 메소드 */
		/* reduce(): 배열의 요소가 하나가 될때까지 요소를 왼쪽부터 두개씩 묶는 함수 
			reduceRight():오른쪽부터 두개씩 묶는 함수*/
		var array = [1,2,3,4,5];
		
		var result = array.reduce(function(previousValue,currentValue) {
			return previousValue+currentValue;
		});
		alert(result)
		/* JSon객체로 바꾸고 JSon형태를 script형태로 바꿔보기 */
		/* JSON.stringify(), JSON.parse()  */
		
		var object ={
			name:'재훈',
			age:36,
			address:'경기도 수원시'
		};
		var json = JSON.stringify(object);
		alert(json);
		var script = JSON.parse(json);
		alert(script);
		
		/* 양쪽 공백 제거   trim() */
		var out =''
		var test = '  jae huni ya    ';
		
		out += test+'\n';
		out += test.trim();
		alert(out);
	</script>
</body>
</html>