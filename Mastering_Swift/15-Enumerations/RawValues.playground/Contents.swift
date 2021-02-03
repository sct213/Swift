import UIKit

/*:
 # Raw Values
 ![Raw Values](raw-values.png)
 */
// 자료형은 String, Character, Number Types만 가능
// 원시 값은 바꿀 수 없다.
enum Alignment: Int {
    // 0~1씩 자동으로 값이 들어감
    case left   // 0
    case right = 100 // 1, 만약 100으로 초기화하면,
    case center // 2, 다음 값도 앞선값에 1을 더해지게 됨
}

Alignment.left.rawValue
Alignment.right.rawValue
Alignment.center.rawValue

// 값을 바꿀 수 없다.
//Alignment.left.rawValue = 10

Alignment(rawValue: 0) // 동일한 값의 value가 나옴 (left)

Alignment(rawValue: 200) // 해당하는 값이 없으면 nil이 출력되므로, enum은 옵셔널 타입이다.


enum Weekday: String {
    case sunday
    case monday = "MON"
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

// enum의 타입을 String으로 선언하면
Weekday.sunday.rawValue // case의 이름과 동일한 문자열이 저장되어 있다.

Weekday.monday.rawValue // "MON"

// 문자열처럼 case와 동일한 값을 저장하지 못하므로 에러
// enum을 Character로 선언하면, 원시값을 직접 지정해야 한다.
enum ControlChar: Character {
    case tab = "\t"
    case newLine = "\n"
}










