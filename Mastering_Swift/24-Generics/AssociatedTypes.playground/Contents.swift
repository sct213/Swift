import UIKit

/*:
 # Associated Types
 ![associatedtype](associatedtype.png)
 */

protocol QueueCompatible {
    associatedtype Element: Equatable
   func enqueue(value: Element)
   func dequeue() -> Element?
}


class IntegerQueue: QueueCompatible {
    // 연관 형식을 지정해줌
    // 보통 생략해서 사용한다.
    typealias Element = Int
    
    func enqueue(value: Int) {
        
    }
    
    func dequeue() -> Int? {
        return 0
    }
}

// 연관형식이 Double로 추론된다.
class DoubleQueue: QueueCompatible {
    func enqueue(value: Double) {
        
    }
    
    func dequeue() -> Double? {
        return 0
    }
}
// typealias AssociatedTypeName = Type

