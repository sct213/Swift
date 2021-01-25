import UIKit

struct Contacts {
   var email: [String: String]
   var address: String
}

struct Person {
   var name: String
   var contacts: Contacts

   init(name: String, email: String) {
      self.name = name
      contacts = Contacts(email: ["home": email], address: "Seoul")
   }
}


/*:
 # Optional Chaining
 */
























