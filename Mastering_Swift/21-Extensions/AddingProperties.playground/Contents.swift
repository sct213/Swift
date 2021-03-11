import UIKit

/*:
 # Adding Properties
 */
extension Date {
    var year: Int {
        let cal = Calendar.current
        return cal.component(.year, from: self)
        // self는 리터럴을 가리킴
    }
    var month: Int {
        let cal = Calendar.current
        return cal.component(.month, from: self)
    }
}

let today = Date()
today.year
today.month

extension Double {
    var radianValue: Double {
        return (Double.pi * self) / 180.0
    }
    
    var degreeValue: Double {
        return self * 180.0 / Double.pi
    }
}

let dv = 45.0
dv.radianValue

// radian으로 바꾸고, 다시 degree로 변환
dv.radianValue.degreeValue
 
