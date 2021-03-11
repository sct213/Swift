import UIKit

/*:
 # Adding Methods
 */
extension Double {
    func toFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }
    
    func toCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
    
    static func converToFahrenheit(from celsius: Double) -> Double {
        return celsius.toFahrenheit()
    }
    
    static func converToCelsius(from farenheit: Double) -> Double {
        return farenheit.toCelsius()
    }
}

let c = 30.0
c.toFahrenheit()

Double.converToCelsius(from: 30.0)


// 날짜를 문자열로 Formatting
extension Date {
    func toString(format: String = "yyyyMMdd") -> String {
        let privateFormatter = DateFormatter()
        privateFormatter.dateFormat = format
        return privateFormatter.string(from: self)
    }
}

let today = Date()
today.toString()

today.toString(format: "MM/dd/yyyy")

extension String {
    static func random(length: Int, charactersIn chars: String = "abcdefg") -> String {
        var randomString = String()
        randomString.reserveCapacity(length)
        
        for _ in 0 ..< length {
            guard let char = chars.randomElement() else {
                continue
            }
            
            randomString.append(char)
        }
        
        return randomString
    }
}

// 랜덤한 문자열 return
String.random(length: 5)
