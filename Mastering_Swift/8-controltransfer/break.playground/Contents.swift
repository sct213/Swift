import UIKit

/*:
 # break
 */
let num = 1

switch num {
case 1...10:
    print("begin block")
    
    if num % 2 != 0 {
        break
    }
    
    print("end block")
default:
    break
}
print("done")



























