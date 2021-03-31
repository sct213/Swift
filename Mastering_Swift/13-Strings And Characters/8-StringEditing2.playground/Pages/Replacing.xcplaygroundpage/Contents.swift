import Foundation

/*:
 # Replacing Substrings
 */
var str = "Hello, Objectiv-C"
<<<<<<< HEAD

// 문자열 바꾸기
if let range = str.range(of: "Objective-C") {
    str.replaceSubrange(range, with: "Swift")
}
str

if let range = str.range(of: "Hello") {
    let s = str.replacingCharacters(in: range, with: "Hi")
}

var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")
=======

// 문자열 바꾸기
if let range = str.range(of: "Objective-C") {
    str.replaceSubrange(range, with: "Swift")
}
str

if let range = str.range(of: "Hello") {
    let s = str.replacingCharacters(in: range, with: "Hi")
}

var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift")

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift", options: [.caseInsensitive])
>>>>>>> bbd1d88e0af55b8dfbb952994ea54fa96c0c554b

//: [Next](@next)
