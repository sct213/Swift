import Foundation
/*:
 # Syntax Optimization
 */

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

var proModels = products.filter({ (name: String) -> Bool in
    return name.contains("Pro")
})

// 문법 최적화
products.filter({
    $0.contains("Pro")
})

// 위와 완전히 동일함
products.filter {
    $0.contains("Pro")
}


proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

// 1. 파라미터형식과 리턴형식 생략
// 2. 파라미터 이름을 생략 후 숏핸드 아규먼트로 대체($)
// 3. 단일 리턴이라면 return 생략
// 4. 마지막 파라미터라면 trailing으로 작성(아규먼트 삭제)
// 5. 괄호 제거

proModels.sort {
    $0.caseInsensitiveCompare($1) == .orderedAscending
}

// 정식 코드를 구현 하고 문법 최적화하기.
proModels.contains(where: { (lhs: String) -> Bool in
    return lhs.contains(lhs)
})
/*:
 - Item1
 - Item2
 - Item3
