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

////////////////////////////// Function /////////////////////////////////////

//MARK: - 함수의 선언
/*
 func 함수이름(매개변수1: 타입, 매개변수2: 타입...) -> 반환 타입 {
    함수 구현부
    return 반환값
 }
*/

//MARK: 반환 값이 없는 함수
/*
    func 함수이름(매개변수1: 타입, 매개변수2:타입...) -> Void {
        함수 구현부
        return
    }
 */

func sum(a: Int, b: Int) -> Int {
    return a + b
}

func printMyName(name: String) -> Void  {
    print(name)
}


