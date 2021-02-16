import UIKit

/*:
 # Subscript Requirements
 ![subscript](subscript.png)
 */
protocol List {
    // get만 적혀있어도 set 사용가능.
    // get을 필수적으로 작성하라는 것이지, get만을 사용하라는 것은 아님
    subscript(idx: Int) -> Int { get set }
}

// subscript의 get, set을 전부 작성해 줘야 함.
struct DataStore: List {
    subscript(idx: Int) -> Int {
        get {
            return 0
        }
        set {
            
        }
    }
}
