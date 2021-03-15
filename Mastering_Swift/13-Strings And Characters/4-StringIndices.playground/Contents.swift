import UIKit

// String Interpolation(Swift5+)

struct Size {
    var width = 0.0
    var height = 0.0
}

let s = Size(width: 1.2, height: 3.4)
print("\(s)")

//extension Size: CustomStringConvertible {
//    var description: String {
//        return "\(width) x \(height)"
//    }
//}

// 새로 도입된 방법
// mutating
extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Size) {
        appendInterpolation("\(value.width) x \(value.height)")
    }
    
    mutating func appendInterpolation(_ value: Size, style: NumberFormatter.Style) {
        let formatter = NumberFormatter()
        formatter.numberStyle = style
        
        if let width =  formatter.string(for: value.width), let height = formatter.string(for: value.height) {
            appendInterpolation("\(width) x \(height)")
        } else {
            appendInterpolation("\(value.width) x \(value.height)")
        }
    }
}

print("\(s)")
print("\(s, style: .spellOut)")


/*:
 # String Indices
 */
let str = "Swift"

let firstCh = str[str.startIndex]
print(firstCh)

// endIndex의 인덱스 얻기
let lastCharIndex = str.index(before: str.endIndex)
// endIndex는 마지막의 다음 인덱스이다.
let lastCh = str[lastCharIndex]
print(lastCh)

// 두번째 문자 출력
let secondCharIndex = str.index(after: str.startIndex)
let secondCh = str[secondCharIndex]
print(secondCh)

// 시작인덱스, 에서 2번째 지난 인덱스.
var thirdCharIndex = str.index(str.startIndex, offsetBy: 2)

thirdCharIndex = str.index(str.endIndex, offsetBy: -1)
var thirdCh = str[thirdCharIndex]
print(thirdCh)

var strCh: Character = " "
var strNum = ""

for num in 0..<str.count {
    
    let strNum = str.index(str.startIndex, offsetBy: num)
    print("\(num)번째 인덱스 값은 \(str[strNum])")
}

// 문자열의 중간 구하기
// 문자열의 길이가 짝수이면 중간에 위치한 두개의 값 출력
// 문자열의 길이가 홀수면 정확히 중간의 값 출력






