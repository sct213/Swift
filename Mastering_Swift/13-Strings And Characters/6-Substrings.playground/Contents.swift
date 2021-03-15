import UIKit

/*:
 # Substring
 */
let str = "Hello, swift"
let l = str.lowercased()

// 첫번째 문자가 추출됨 (first == H)
var first = str.prefix(1)

// 서브스트링은 원본 메모리를 공유함
// 읽을 때는 공유, 수정하면 새로운 메모리에 기존 값을 복사 후 수정

first.insert("!", at: first.endIndex)

// str은 변경되지 않음.
str
first

// 새로운 메모리공간 생성 후 저장
let newStr = String(str.prefix(1))

// 정수 인덱스는 사용 불가
//let s = str[0..<2]

// 코드가 복잡
let s = str[str.startIndex ..< str.index(str.startIndex, offsetBy: 2)]

// 범위가 한정되어 있으므로, 맨 앞과 맨 뒤를 생략할 수 있다.
let betterS = str[..<str.index(str.startIndex, offsetBy: 2)]

str[str.index(str.startIndex, offsetBy: 2)...]

let lower = str.index(str.startIndex, offsetBy: 2)
let upper = str.index(str.startIndex, offsetBy: 5)
str[lower ... upper]


















