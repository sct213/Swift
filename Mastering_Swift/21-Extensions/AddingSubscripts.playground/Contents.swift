import UIKit

/*:
 # Adding Subscripts
 */
extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

let str = "Swift"
str[1]
str[0]

str[100]



extension Date {
    subscript(component: Calendar.Component) -> Int? {
        let cal = Calendar.current
        return cal.component(component, from: self)
    }
}

let today = Date()
today[.year]
today[.month]
today[.day]
