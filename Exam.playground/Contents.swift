import Swift

/*
 Any - Swift의 모든 타입을 지칭
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미
 */

var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

//let someDouble: Double = someAny

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

//someAnyObject = 123.12

//someAny = nil      // 빈 값은 들어올 수 없음
//someAnyObject = nil// 빈 값은 들어올 수 없음

////////////////////////////////// 컬렉션 타입 ////////////////////////////////////
/* Array, Dictionary, Set */

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값이 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(10.1) Error

integers.contains(100)  // true
integers.contains(77)   // false

integers.remove(at: 0)  // 첫째 값 제거
integers.removeLast()   // 마지막 값 제거
integers.removeAll()    // 전부 제거

integers.count          // 전체 수를 출력

// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()
// 빈 String Array 생성
var strings: Array<String> = [String]()
var strings1: [String] = []

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

//MARK: - Dictionary

// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]() // 축약 표현

anyDictionary["SomeKey"] = "value"
anyDictionary["AnotherKey"] = 100

anyDictionary["SomeKey"] = "dictionary"

anyDictionary.removeValue(forKey: "AnotherKey")

// SomeKey에 해당하는 값 삭제
anyDictionary["SomeKey"] = nil

let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name": "yang", "test": "Success"]

//MARK: - Set
// 중복값은 없다.

// 빈 Int Set
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(2)

integerSet.remove(1)        // 해당 값 삭제
integerSet.removeFirst()    // 첫째 값만 삭제
integerSet.count            // 값 카운트

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합(정렬X)
let union: Set<Int> = setA.union(setB)
// 정렬
let sortedUnion: [Int] = union.sorted()
// 교집합
let intersection: Set<Int> = setA.intersection(setB)
// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)



//MARK: - 함수의 선언
/*
 - 함수선언의 기본형태
 func 함수이름(매개변수1: 타입, 매개변수2: 타입 ...) -> 반환 타입 {
    함수 구현부
    return 반환값
 }
 
 - 반환 값이 없는 함수(Void)
 func 함수이름(매개변수1: 타입, 매개변수2: 타입 ...) -> Void {
    함수 구현부
    return 반환값
 }
 
 - 반환 값이 없는 함수(생략가능)
 func 함수이름(매개변수1: 타입, 매개변수2: 타입 ...) {
    함수 구현부
    return 반환값
 }
 
 - 매개변수가 없는 함수
 func 함수이름() -> 반환값 {
    함수 구현부
    return 반환값
 }
 
 - 매개변수와 반환값이 없는 함수
 func 함수이름() -> Void(생략가능) {
    함수 구현부
    return 반환값
 }
*/

//MARK: - 함수의 호출

func sum(a: Int, b: Int) -> Int {
    return a + b
}
sum(a: 3, b: 5) // 8

func printMyName(name: String) -> Void {
    print(name)
}
printMyName(name: "TEST")

func hello() -> Void { print("Hello") }
hello()
func bye() { print("bye") }

//MARK: - 매개변수 기본값

// 기본값을 갖는 매개변수는 매개변수 목록 중 뒤쪽에 위치하는 것이 좋습니다.
/*
 func 함수이름(매개변수1: 타입, 매개변수2: 타입 = 매개변수 기본값 ...) -> 반환타입 {
    함수 구현부
    return 반환값
 }
 */

func greeting(friend: String, me: String = "Yang") {
    print("Hello, \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다.
greeting(friend: "Hana")    // Hello Hana! I'm Yang
greeting(friend: "John", me: "Eric")    // Hello John! I'm Eric


//MARK: - 전달인자 레이블

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용
/*
 func 함수이름(전달인자 레이블 매개변수1: 타입, 전달인자 레이블 매개변수2: 타입 ...) -> 반환타입 {
    함수 구현부
    return
 }
 */

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용

func greeting(to friend: String, from me: String = "yang") {
    print("Hello, \(friend)! I'm \(me)")
}
greeting(to: "HANA")

/* MARK: - 가변 매개변수
 
     1. 전달 받을 값의 개수를 알기 어려울 때 사용
     2. 가변 매개변수는 함수당 하나만 가질 수 있다.
     
 func 함수이름(매개변수1: 타입, 전달인자 레이블 매개변수2: 타입...) -> 반환타입 {
    함수 구현부
    return
 }
*/

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}
print(sayHelloToFriends(me: "Yang", friends: "HANA", "ERIC"))
// Hello ["HANA", "ERIC"]! I'm Yang
print(sayHelloToFriends(me: "Yang"))
// Hello []! I'm Yang

/* 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능 */

/* MARK: - 데이터 타입으로서의 함수
    
    1. 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
    2. 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장 가능
    3. 매개변수를 통해 전달할 수 있음
 */

/* MARK: 함수의 타입표현
    
    1. 반환타입을 생략할 수 없다
    (매개변수1: 타입, 매개변수2: 타입 ...) -> 반환타입
*/

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "Yang")    // Hello, eric! I'm Yang

someFunction = greeting(friend:me:)
someFunction("eric", "Yang")    // Hello, eric! I'm Yang

// 타입이 다른 함수는 할당할 수 없습니다.

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}
runAnother(function: greeting(friend:me:))
runAnother(function: someFunction)
