import UIKit

/*:
 # Appending Strings and Characters
 */
var str = "Hello"
// 대상 문자열을 직접 변경함(메소드가 동사일 경우 값이 직접적으로 변경됨)
str.append(", ")
str

// 새로운 문자열을 return함
// ing, ed가 붙어있는 함수는 return으로 값을 받음
let s = str.appending("Swift")

// 원하는 포맷으로 연결할 때 사용함
"File size is ".appendingFormat("%.1f", 12.345)

var str1 = "Hello Swift"

str1.insert(",", at: str.index(str.startIndex, offsetBy: 5))

if let sIndex = str.firstIndex(of: "S") {
    str.insert(contentsOf: "Awesome", at: sIndex)
}

str
