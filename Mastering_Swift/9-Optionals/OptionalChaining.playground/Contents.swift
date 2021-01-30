import UIKit

struct Contacts {
   var email: [String: String]?
   var address: String?
    
    func printAddress() {
        // 값이 있다면 address출력, 없으면 "no address"
        return print(address ?? "no address")
    }
}

struct Person {
   var name: String
   var contacts: Contacts?

   init(name: String, email: String) {
      self.name = name
      contacts = Contacts(email: ["home": email], address: "Seoul")
   }
    
    func getContacts() -> Contacts? {
        return contacts
    }
}


/*:
 # Optional Chaining
 */
// 옵셔널 체이닝의 결과는 무조건 옵셔널이다.
// 하나라도 nil이라면 nil

var p = Person(name: "James", email: "swift@example.com")

// 개별 표현식 전부 옵셔널이 아님
let a = p.contacts?.address

var optionalP: Person? = Person(name: "James", email: "swift@example.com")

//let b = optionalP.contacts.address // Error
let b = optionalP?.contacts?.address

b

// nil이 존재한다면 return은 무조건 nil이 됨
optionalP = nil

// 옵셔널 표현식이 하나라도 있다면 c는 옵셔널타입이 됨
let c = optionalP?.contacts?.address

p.contacts?.address?.count

//p.getContacts().address
p.getContacts()?.address

// 심화
let f: (() -> Contacts?)? = p.getContacts

//f()?.address
f?()?.address

let d = p.getContacts()?.printAddress()
type(of: d) // () == Void


if p.getContacts()?.printAddress() != nil {
    
}

// return 값이 없으므로.
if let _ = p.getContacts()?.printAddress() {
    
}

let e = p.contacts?.email?["home"]

// 딕셔너리는 옵셔널로 출력됨
p.contacts?.email?["home"]?.count

// 모든 표현식이 nil이 아님
p.contacts?.address = "Daegu"
p.contacts?.address

// optionalP가 nil이므로 nil이 됨
optionalP?.contacts?.address = "Daegu"
optionalP?.contacts?.address























