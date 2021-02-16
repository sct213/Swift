
//: [Previous](@previous)

import Foundation

/*:
 # Specialization
 */


func swapValue<T: Equatable>(lhs: inout T, rhs: inout T) {
   print("generic version")
   
   if lhs == rhs {
      return
   }
   
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}

func swapValue(lhs: inout String, rhs: inout String) {
    print("specialized version")
    
    if lhs.caseInsensitiveCompare(rhs) == .orderedSame {
        return
    }
    let tmp = lhs
    lhs = rhs
    rhs = tmp
}
var a = 1
var b = 2
swapValue(lhs: &a, rhs: &b)

var c = "Swift"
var d = "Program"
swapValue(lhs: &c, rhs: &d)
