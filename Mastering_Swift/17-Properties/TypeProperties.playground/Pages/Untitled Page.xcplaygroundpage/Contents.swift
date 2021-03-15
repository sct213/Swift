import UIKit
/*:
 # Type Properties
 ## Stored Type Properties
 ![type1](type1.png)
 ![type2](type2.png)
 */
// 항상 원하는 값으로 초기화해야 함
// 반드시 형식의 이름을 통해 접근해야 함
class Math {
    static let pi = 3.14
}

// 아직 초기화되지 않음
let m = Math()
//m.pi

// Class의 이름으로 .name에 접근해야 함
// 접근 시점에서 초기화 된다.
Math.pi
/*:
 ## Computed Type Properties
 ![type3](type3.png)
 ![type4](type4.png)
 */
// static으로 선언하면 오버라이딩 불가
// class는 허용
enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    static var today: Weekday {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        
        return Weekday(rawValue: weekday)!
    }
}

Weekday.today








