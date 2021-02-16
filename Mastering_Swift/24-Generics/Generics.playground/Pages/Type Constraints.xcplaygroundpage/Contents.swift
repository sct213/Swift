
//: [Previous](@previous)

import Foundation

/*:
 # Type Constraints
 ![type-constraints](type-constraints.png)
 */

func swapValue<T: Equatable>(lhs: inout T, rhs: inout T) {
    if lhs == rhs { return }
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}





//: [Next](@next)
