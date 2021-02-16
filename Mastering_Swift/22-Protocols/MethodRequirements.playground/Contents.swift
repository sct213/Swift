import UIKit

/*:
 # Method Requirements
 ![method](method.png)
 */
protocol Resettable {
    static func reset()
}

class Size: Resettable {
    var width = 0.0
    var height = 0.0
    
    // struct에서 속성 값을 변경하려면 mutating키워드를 붙여야 함
    // class는 자유롭게 변경이 가능함
    func reset() {
        width = 0.0
        height = 0.0
    }
    // 이름이 동일한 메서드는 instance, static로 오버라이딩을 허용
    class func reset() {
        
    }
}
