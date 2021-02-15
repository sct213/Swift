import UIKit

/*:
 # Initializer Delegation
 
 ## Value Type
 */
// 중복을 제거하고, 효율적으로 사용하기 위함
// 다른 init을 호출하는 것
// 유지보수가 수월해짐
struct Size {
   var width: Double
   var height: Double

   init(w: Double, h: Double) {
      width = w
      height = h
   }
    
    // 첫번째 이니셜라이저를 호출함.
   init(value: Double) {
    self.init(w: value, h: value)
   }
}


/*:
 ## Class
 */
// 동일한 클래스의 init을 호출하는 것이 불가함
// 항상 super 클래스의 init을 호출해야 함










