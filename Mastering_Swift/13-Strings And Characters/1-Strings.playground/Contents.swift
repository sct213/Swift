import UIKit

/*:
 # Strings and Characters
 */
let s = "String"

let c = "C"
// " "는 항상 문자열로 추론함

// 문자타입을 원하면 선언해야함
let c1: Character = "C"

let emptyChar: Character = " "

// 공백이 포함된 문자열로 추론됨
let emptyString = ""
emptyString.count

// 빈 문자열 생성
let emptyString2 = String()
/*:
 ## String Types
 */
var nsstr: NSString = "STR"

// 호환은 되나 바로 저장되지는 않음
// 타입 캐스팅.
let swiftStr: String = nsstr as String
// 타입 캐스팅하여 저장함
nsstr = swiftStr as NSString
/*:
 ## Mutability
 */
let immutableStr = "str"
// 상수
//immutableStr = "new Str"

var mutableStr = "str"
mutableStr = "new Str"
/*:
 ## Unicode
 */
let str = "Swift String"

// 있다는 것만 알아두기
str.utf8
str.utf16

var thumbUp = "ß"

thumbUp = "∑"

// 유니코드 스칼라 값으로 이모티콘을 가져옴
thumbUp = "\u{1F44D}"














