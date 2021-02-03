import UIKit

// Raw String

// \를 통해 기호 출력
var str = "\"Hello\", Swift 5"

// #으로 감싸 RawString으로 만듬.(\가 필요없어짐)
var rawStr = #""Hello", Swift 5"#

// #에 줄바꿈 넣기
str = #"Lorem \#n Ipsum"#
// 항상 같은 # 수로 쓰기
rawStr = ###"Lorem \n### Ipsum"###
print(str)

print(rawStr)

let value = 123
str = "The Value is \(value)"

// \#()로 사용해야 함
rawStr = #"The value is \#(value)"#

// 정규식 사용법
var zipCodeRegex = "^\\d{3}-?\\d{3}$"
// #을 통해 \를 하나만 사용.(가독성 증가)
zipCodeRegex = #"^\d{3}-?\d{3}$"#

let zipCode = "123-456"
if let _ = zipCode.range(of: zipCodeRegex, options: [.regularExpression]) {
    print("Valid")
}
/*:
 # String Interpolation
 ![placeholder](placeholder.png)
 */
var str1 = "12.34KB"

let size = 12.34
// 자료형이 다르므로 오류
//str = size + "KB"

// 잘 사용하지 않음
str = String(size) + "KB"

// Interpolation (가독성이 높아짐)
// 단점: 원하는 포맷을 직접 지정할 수는 없음
str = "\(size)KB"
/*:
 ## Format Specifier
 ![format-specifier](format-specifier.png)
 */
// format: 포맷지정자(%.1f)
str = String(format: "%.1fKB", size)

// %@이 문자열을 대체함
String(format: "Hello, %@", "Swift")

// %d는 정수만 대체함
String(format: "%d", 12)

String(format: "%f", 12.34)

// 세번째 자릭까지 출력
String(format: "%.3f", 12.34)

// 전체 자리수 결정
String(format: "%10.3f", 12.34)

// 열자리를 출력 0으로 대체하며
String(format: "%010.3f", 12.34)

String(format: "[%d]", 123)
// 오른쪽 정렬
String(format: "[%10d]", 123)
// 왼쪽 정렬
String(format: "[%-10d]", 123)

//MARK: -
let firstName = "Yoon-ah"
let lastName = "Lim"

// 파라미터를 교체할 수 있음
let korFormat = "그녀의 이름은 %2$@ %1$@ 입니다."
let engFormat = "Her name is %@ %@."

String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName)


// escapeSequence
// 특별한 기호(escapeSequence)이기에 바로 지정 불가
//str = "\"

str = "\\"
print(str)

// \t(탭)
print("A\tB")

// \n(줄바꿈)
print("C\nD")

// \" (") \' (')
print("\"Hello He said.\"")



