import Foundation

var tset: Int = (Int.random(in: -100...100))

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100
var year: YourInt = 2080

var person: (name: String,age: Int,height: Double) = ("yagom", 100, 182.5)

print("이름: \(person.name), 나이: \(person.age), 키: \(person.height)")
