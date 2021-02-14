import UIKit
/*:
 # Subscripts
 ![subscript](subscript.png)
 */
let list = ["A", "B", "C"]
// 이러한 형태가 Subscript
list[0]
/*:
 ![subscript-syntax](subscript-syntax.png)
 */
class List {
    var data = [1, 2, 3]
    
    subscript(i index: Int) -> Int {
        get {
            return data[index]
        }
        
        set {
            data[index] = newValue
        }
    }
}

var li = List()
// 값을 가져올때 get 실행
li[i: 0]
// 값을 수정할때 set 실행
li[i: 1] = 123

// Argument Label. 하지만 잘 사용하지 않는다.
li[i: 1]

struct Matrix {
    var data = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]
    
    subscript(row: Int, col: Int) -> Int {
        return data[row][col]
    }
}

var Ma = Matrix()

// subscript로 배열을 전달할 경우.
Ma[0, 1]

//MARK: - Dynamic Member Lookup

// 코드의 유연성이 높아짐.
@dynamicMemberLookup
struct Person {
    var name: String
    var address: String
    
    subscript(dynamicMember member: String) -> String {
        switch member {
            case "nameKey":
                return name
            case "addressKey":
                return address
            default:
                return "N/A"
        }
    }
}

let p = Person(name: "James", address: "Seoul")
p.name
p.address

p[dynamicMember: "nameKey"]
p[dynamicMember: "addressKey"]

p.nameKey
p.addressKey

p.missingKey



















