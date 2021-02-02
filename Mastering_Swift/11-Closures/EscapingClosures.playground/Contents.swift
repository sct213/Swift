import UIKit
/*:
 # Escaping Closure
 */
// 함수의 실행흐름 밖에 있는 Closure를 위한 속성
func performNonEscaping(closure: () -> ()) {
    print("start")
    closure()
    print("end")
}

// 클로저 전달
performNonEscaping {
    print("closure")
}
// 함수의 실행 흐름을 탈출하지 않음.



//func performEscaping(closure: () -> ()) {
//    print("Start")
//
//    // 함수의 실행이 끝난 다음 호출되기 때문에 에러가 발생함.
//    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//        closure()
//    }
//
//    print("End")
//}
 

func performEscaping(closure: @escaping () -> ()) {
    print("Start")
    
    var a = 12
    
    // 함수의 실행이 끝난 다음 호출되기 때문에 에러가 발생함.
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        closure()
        print(a)
    }
    
    print("End")
}

// Start, End가 출력된 이후 closure가 출력됨
performEscaping {
    print("closure")
}

// 함수가 종료되면 클로저도 함께 제거됨.
