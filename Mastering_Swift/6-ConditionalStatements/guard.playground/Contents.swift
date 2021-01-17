import UIKit

/*:
 # guard
 ## Syntax
 ![guard-syntax](guard-syntax.png)
 */
// Early Exit : 원하는 조건이 충족되지 않으면 불필요한 코드를 실행하지 않고 일찍 종료하는 것
// guard의 장점 : 불필요한 중첩을 피해 코드가 간결해짐

func validate(id: String?) -> Bool {
    // id 파라미터에 실제 문자열이 저장되어 있다면 새로운 상수 id에 값을 저장
    guard let id = id else {
        return false
    }
    
    guard id.count >= 6 else {
        return false
    }
    
//    guard let id = id, id.count >= 6 else {
//        return false
//    }
    
    return true
}

validate(id: nil)

validate(id: "abd")

validate(id: "swiftlang")

// guard문에서 else 블럭은 필수이며, 반드시 코드의 실행을 중지해야 한다.

func validateUsingIf() {
    var id: String? = nil
    
    if let str = id {
        if str.count >= 6 {
            print(str)
        }
    }
}

func validateUsingGuard() {
    var id: String? = nil
    
    // return문으로 코드를 종료함
    // str변수는 else문 안에서 사용할 수 없음
    guard let str = id else { return }
    
    // 이와 같이 guard문 밖에서 사용 가능
    guard str.count >= 6 else { return }
    
    print(str)
}

// 조건 자체가 단순하면 if문 사용
// 복잡한 조건을 구현하거나 바인딩한 상수를 동일한 스코프에서 계속 사용할 경우 guard사용
// 가독성을 위해 사용하는 guard













