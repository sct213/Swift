import UIKit

/*:
 # do-catch Statements
 ![do-catch](do-catch.png)
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

// 가장 까다로운 에러부터 작성
// 위에서 부터 차례대로 catch문에 맞는지 확인한다.
// do에서 발생하는 모든 에러들을 구현해야 함.
do {
    try parsing(data: [:])
} catch DataParsingError.invalidType {
    print("invalid type Error")
} catch {
    print("handle Error")
}

// Error를 hadleError()함수를 실행한 쪽으로 던진다.
func handleError() throws {
    do {
        try parsing(data: [:])
    } catch DataParsingError.invalidType {
        print("invalid type Error")
    } catch {
        print("handle Error")
    }
}

func hadleError1() throws {
    do {
        try parsing(data: ["name": ""])
    } catch {
        if let error = error as? DataParsingError {
            switch error {
                case .invalidType:
                    print("invalid type")
                default:
                    print("handle error")
            }
        }
    }
}
