import UIKit

/*:
 # Nested Functions
 */

// global scope
func outer() -> () -> () {
    
    func inner() {
        print("INNER")
    }
    
    print("OUTER")
    
    return inner
}

let f = outer()
f()


/*:
 # Nested Functions
 */
