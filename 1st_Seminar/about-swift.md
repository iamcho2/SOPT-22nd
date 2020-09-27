# Swift Basic

## Contents

[변수 선언](#declaring-variables)	/	[for 문](#for-loop)	/	[문자열 템플릿](#string-template)	/	[집단 자료형](#group-data-types)	/	[옵셔널](#optional)	/	[함수]()	/	[클래스]()	/	[프로토콜]()	/	[확장]()	/	[POP Programming]()

## <a id="declaring-variables" />변수 선언

```swift
//변수 선언
var str = "Hello Swift!" //String
var num1 = 1 //Int
var num2 = 0.5 //Double
var button1 = UIButton() // UIButton
var button1: UIButton? // UIButton?

//상수 선언
let num3 = Float(num2) // Float
```

> 명령 구문 뒤에 세미콜론을 붙이는 건 선택사항

var : 변수, let : 상수

변수 타입은 선언 시 정해짐



## <a id="for-loop" />for 문

C 같은 for( ; ; ) 형식의 구문은 swift3에서 제외되었음

for - in 구문을 사용함

* for 임시 상수 in 시퀀스 아이템 { 실행코드 }

```swift
var num = 0
for item in 1..<5 {
  print(num)
  num += item
}
```



## <a id="string-template" />문자열 템플릿

== 문자열 보간법

```
let hi = "안녕하세요"
let myAgeIs: String = "제 나이는"
let num23 = "23"
var introduce = "\(hi), \(myAgeIs) \(num23)입니다"
print(introduce)

introduce.append(" 여러분")
print(introduce+" 반갑습니다~")

//출력내용
안녕하세요, 제 나이는 23입니다
안녕하세요, 제 나이는 23입니다 여러분 반갑습니다~
```

"**\\(변수 & 상수)** 를 통해 해당 변수나 상수의 값을 문자열로 사용 가능함



## <a id="group-data-types" />집단 자료형

1. 배열

한가지 자료형을 순서대로 나열하여 사용하는 경우.

인덱스는 0부터 시작, 1씩 증가

```swift
var iOSArray = [String]()
var myArray = ["정초이", "초이", "정초이이"]
myArray.append("초이정")
iOSArray += myArray
```



2. 튜플

여러가지 자료형을 하나의 변수에 담아 사용하는 경우.

추가, 삭제 불가능

```swift
var myTuple = ("정초이", 23, 100.0)
var yourTuple: (name: String, age: Int, score: Double) = ("김초이", 24, 95.0)
print(myTuple)
print(yourTuple.0)
print(yourTuble.name)
```



3. 딕셔너리

key & value로 각 키에 해당하는  value값을 할당하는 경우

아이템 참조 시 옵셔널 타입을 반환함 (잠재적 오류의 가능성)

```swift
var myDic: [String:Int] = ["정초이":23, "오민석":28, "우지호":29]
print(myDic["정초이"])
//추가하기
myDic["김민지"] = 20
myDic.updateValue(23, forkey: "김연주")
```



4. 집합

우리가 알고 있는 수학의 집합과 동일함

같은 타입의 자료를 순서 없이 하나의 묶음으로 저장

사용할 일 거의 없음

```swift
var mySet: Set<String> = ["정초이", "김연주", "김수현"]
```



## <a id="optional" />옵셔널 

