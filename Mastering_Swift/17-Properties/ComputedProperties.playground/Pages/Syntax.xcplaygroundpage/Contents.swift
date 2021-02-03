import UIKit

/*:
 # Computed Properties
 ![computed](computed.png)
 */
// get block / getter
// set block / setter

class Person {
   var name: String
   var yearOfBirth: Int

   init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
   }
    
    var age: Int {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
    }
}

// get
let p = Person(name: "John", year: 2002)
p.age

p.yearOfBirth

// get만 있으면 읽기 전용
/*:
 ## Read-only Computed Properties
 ![readonly-1](readonly-1.png)
 ![readonly-2](readonly-2.png)
 */
/**:
 
 var age: Int {
         let calendar = Calendar.current
         let now = Date()
         let year = calendar.component(.year, from: now)
         return year - yearOfBirth
 }
 */











