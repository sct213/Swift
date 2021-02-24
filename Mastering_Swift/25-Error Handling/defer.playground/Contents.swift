import UIKit

/*:
 # defer Statements
 ![defer](defer.png)
 */

// 자원을 정리할 때 활용함
func processFile(path: String) {
    print("1")
    let file = FileHandle(forReadingAtPath: path)
    
    // Process
    
    // 함수가 종료될 때까지 연기됨
    // 항상 함수가 종료될 때 실행된다.(맨 마지막)
    defer {
        print("2")
        file?.closeFile()
    }
    
    if path.hasSuffix(".jpg") {
        print("3")
        return
    }
    
    defer {
        print("5")
    }
    
    print("4")
}

//processFile(path: "file.jpg")


// 호출된 순서대로 코드를 예약한다.
// * 특별한 일이 없다면 defer문을 하나만 작성하는 것이 바람직하다.
func testDefer() {
    // 처음 예약
    defer {
        print(1)
    }
    // 두번째 예약
    defer  {
        print(2)
    }
    // 세번째 예약
    defer {
        print(3)
    }
}
testDefer()


















