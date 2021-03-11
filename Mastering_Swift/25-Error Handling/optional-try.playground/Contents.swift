import UIKit

/*:
 # optional try
 ![optional-try](optional-try.png)
 */

enum DataParsingError: Error {
   case invalidType
   case invalidField
   case missingRequiredField(String)
}

func parsing(data: [String: Any]) throws {
   guard let _ = data["name"] else {
      throw DataParsingError.missingRequiredField("name")
   }
   
   guard let _ = data["age"] as? Int else {
      throw DataParsingError.invalidType
   }
   
   // Parsing
}

// 반환이 없기때문에 _ 로 생략
if let _  = try? parsing(data: [:]) {
    print("success")
} else {
    print("fail")
}

do {
    try parsing(data: [:])
    print("success")
} catch {
    print("fail")
}

// 반드시 옵셔널 바인딩으로 하지 않아도 됨
try? parsing(data: [:])

// Crash!!
// 가능하면 사용하지 않는것이 좋으며, Error가 발생하지 않는게 확실하다면 제한적으로 사용
//try! parsing(data: [:])







