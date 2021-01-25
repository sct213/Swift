import UIKit

/*:
 # Labeled Statement
 
 ## Syntax
 ![labeled](labeled.png)
 ![usinglabel](usinglabel.png)
 */
// Label을 전달하면 동일한 Label의 문장을 제어함
// 제어문과 반복문이 중첩된 상황에서 원하는 문장을 종료하기 위해 사용함
outer: for i in 1...3 {
    print("OUTER LOOP", i)
    
    for j in 1...3 {
        print("  INNER LOOP", j)
        
        break outer
//      break    // 안쪽의 for문을 제어
    }
}




















