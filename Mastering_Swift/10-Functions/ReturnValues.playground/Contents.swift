import UIKit

/*:
 # Return Values
 ![return](return.png)
 */
func add() -> Int {
    return 1 + 2
}

let r = add()

if add() == 3 {
    print("three")
}

func doSomething() {
    let rnd = Int.random(in: 1...10)
    
    if rnd % 2 == 1 {
        return
    }
    
    print(rnd)
}

















