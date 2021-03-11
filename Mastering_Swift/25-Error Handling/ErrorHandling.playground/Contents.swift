import UIKit

/*:
 # Error Handling
 
 ![throw](throw.png)
 ![throws](throws.png)
 */
enum DataParsingError: Error {
    case invalidType
    case invalidField
    case missingRequiredField(String)
}

// throw문이 실행되면,같은 블록의 나머지 코드는 실행되지 않음
func parsing(data: [String: Any]) throws {
    guard let _ = data["name"] else {
        throw DataParsingError.missingRequiredField("name")
    }
    
    guard let _ = data["age"] as? Int else {
        throw DataParsingError.invalidType
    }
    
    // Parsing
}
/*:
 # try Statements
 ![try](try.png)
 */
try? parsing(data: [:])

// 1. do-catch
// 2. try Expressiong + Optional Binding
// 3. hand over


