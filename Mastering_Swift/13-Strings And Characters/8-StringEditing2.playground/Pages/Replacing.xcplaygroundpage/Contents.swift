import Foundation

/*:
 # Replacing Substrings
 */
var str = "Hello, Objectiv-C"

// 문자열 바꾸기
if let range = str.range(of: "Objective-C") {
    str.replaceSubrange(range, with: "Swift")
}
str

if let range = str.range(of: "Hello") {
    let s = str.replacingCharacters(in: range, with: "Hi")
}

var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")

//: [Next](@next)
