import UIKit

/*:
 # Stored Properties
 ![syntax](syntax1.png)
 */
class Person {
    let name: String = "John Doe"
    var age: Int = 33
    
}

struct SPerson {
    let name: String = "TEST"
    var age: Int = 33
}




/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */
let p = Person()
p.name
p.age

// class의 프로퍼티 선언 값에 따라 값 변경 가능, 불가
p.age = 30
//p.name = "Test"

// 구조체 인스턴스를 받는 값이 변수이나 상수에 따라 값 변경 가능여부
let sp = SPerson()
// 값을 바꿔야 한다면 인스턴스를 변수로 선언할 것
/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */
// 초기화를 지연시킴(속성에 처음 접근하는 시점을 지연)
struct Image {
    init() {
        print("New Image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
    // Image는 크기가 크다
    lazy var attachment: Image = Image()
    
    let date: Date = Date()
    
    // Date를 String으로 만드는 클로저
    // 같은 초기화 시간을 쓰지 않고 lazy로 시간을 늦추어야 .string(from: date)를 사용할 수 있다.
    lazy var formattedDate: String = {
       let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()
}
// 불러올때마다 실행되므로 불필요한 메모리는 가짐
var post = BlogPost()

// 속성에 처음 접근할 때 호출됨
post.attachment














