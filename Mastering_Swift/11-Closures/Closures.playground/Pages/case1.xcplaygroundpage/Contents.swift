//: [Previous](@previous)

import Foundation

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

// filter메서드 내부에서 클로저가 호출됨
var proModels = products.filter({ (name: String) -> Bool in
    return name.contains("Pro")
})

print(proModels)

print(proModels.sorted())

proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
    // 문자열 비교 구문
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

print(proModels)
//: [Next](@next)
