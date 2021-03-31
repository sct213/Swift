
//: [Previous](@previous)

import Foundation

/*:
 # Removing Substrings
 */
var str = "Hello, Awesome Swift!!"

let lastCharIndex = str.index(before: str.endIndex)
var removed = str.remove(at: lastCharIndex)

// 삭제된 문자 저장
removed
str

removed = str.removeFirst()
removed
str

// 처음부터 2개의 문자를 삭제
str.removeFirst(2)
str

str.removeLast()
str

// 전달한 숫자만큼 문자를 삭제함
str.removeLast(2)
str

if let range = str.range(of: "Awesome") {
    str.removeSubrange(range)
    str
}

// 모든 문자를 삭제하고 빈 문자를 return
str.removeAll()

// 주소는 삭제하지 않음
str.removeAll(keepingCapacity: true)


/*
 dropLast
 */
str = "Hello, Awesome Swift!!!"

// 원본 문자열에서 마지막 문자를 제외한 나머지를 return
var substr = str.dropLast()

// 마지막에서 3번째까지.
substr = str.dropLast(3)

// 조건을 건다.(,앞의 모든 문자열을 제거)
substr = str.drop(while: { (ch) -> Bool in
    return ch != ","
})
substr
