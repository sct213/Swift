// 비어있는 배열 생성
var empty: [Int] = []

var empty1 = [Int]()

var empty2: Array<Int> = []


// 데이터 넣기
var a: Array<Int> = [1, 2, 3, 4]
var b: [Int] = [1, 2, 3, 4]
var c = [1, 2 ,3, 4]        // 타입 유추
var d = Array<Int>(1...4) // [1, 2, 3, 4]

// 배열 초기화
a = []

//
a.append(1)


// 다양한 자료형 배열
// 해당 배열을 사용하고 싶다면, 반드시 [Any] 타입으로 지정해야 함
var anyArr: [Any] = [1, 2, "Hello", "Swift"]


// 크기가 정해진 배열
var threeDoubles = [Int](repeating: 0, count: 3)
var threeDoubles1 = Array(repeating: 0, count: 3)
var threeDoubles2 = [String](repeating: "A", count: 3)


/* 배열 수정하기 */

// 1. 배열에 값 추가
a.append(5)
a += [5, 6, 7]

a.append(contentsOf: stride(from: 5, through: 10, by: 1))

// 2. 배열의 값 접근(서브스크립트)
a[1]
a[2]
a[5]
print(a)


/* 배열 값 수정 */

// 1. range를 주고 값 수정, 추가
var arr: Array<Int> = [1, 2, 3, 4]

arr[1...2]

// 인덱스 1과 2의 값을 5, 6으로 수정
arr[1...2] = [5, 6]

print(arr)

// range의 범위를 벗어나도 값을 추가해줌
arr[1...2] = [5, 6, 7, 8, 9]
print(arr)


// 2. insert(_:at:)를 통한 값 추가
arr.insert(5, at: 4)
arr.insert(0, at: 0)





















