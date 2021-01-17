
//: [Previous](@previous)

import Foundation

/*:
 # Fall Through
 */
// 일치한 case 이후 바로 그 다음 case도 출력

let num = 1

switch num {
case 1:
   print("one")
    fallthrough
case 2:
   print("two")
   
case 3:
   print("three")
default:
   break
}


let attempts = 10

switch attempts {
case ..<10:
    print("warning")
case 10:
    print("warning")
    fallthrough
default:
    print("reset")
}























