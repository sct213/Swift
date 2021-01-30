import UIKit

/*:
 # Optional Pattern
 */
// 단축문법
let a: Int? = 0

let b: Optional<Int> = 0

if a == nil {
    
}

if a == .none {
    
}

if a == 0 {
    
}

if a == .some(0) {
    
}

// 아래 코드를 단축한 것
if let x = a {
    print(x)
}

if case .some(let x) = a {
    print(x)
}


// 위 코드를 옵셔널로 변경
if case let x? = a {
    print(x)
    // x의 타입은 Int.
}

// 옵셔널은 코드가 간결해지는 장점이 있음

let list: [Int?] = [0, nil, nil, 3, nil, 5]

// nil은 출력하지 않음
for item in list {
    // 바인딩이 되지 않으면 continue
    guard let x = item else { continue }
    print(x)
}

// 옵셔널 패턴으로 구현
// list의 값이 nil이면 바인딩하지 않음
for case let x? in list {
    print(x)
}











