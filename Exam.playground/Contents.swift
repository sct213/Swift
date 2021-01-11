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
