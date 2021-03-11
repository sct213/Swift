import Foundation

extension String {
    func getArrayAfterRegex(regex: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: self, range: NSRange(self.startIndex..., in: self))
            return results.map {
                String(self[Range($0.range, in: self)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
}

let str = "Hello Hello #hi #Hello ##nam WOW www Hello"

// ^ : 시작에 위치하는 대상 지목
print(str.getArrayAfterRegex(regex: "^Hello"))

// $ : 끝에 위치하는 대상 지목
print(str.getArrayAfterRegex(regex: "Hello$"))

// Hello 전부 출력
print(str.getArrayAfterRegex(regex: "Hello"))

// 여러 조건 출력
print(str.getArrayAfterRegex(regex: "(Hello|www|hi)"))

// . : Any Character
// ... : 3개씩 끊는다.
print(str.getArrayAfterRegex(regex: "..."))

// {}를 통해 수량을 정확히 지정
print(str.getArrayAfterRegex(regex: ".{3}"))

// [] : 문자 하나에 해당
// [W-Z] : W ~ Z까지 한 문자를 찾는다.
print(str.getArrayAfterRegex(regex: "[W-Z]"))

// [^ ] : 부정의 의미
// [^W-Z] : W ~ Z까지가 아닌 한 문자
print(str.getArrayAfterRegex(regex: "[^W-Z]"))

// * = 0 ~ 여러개
// + = 1 ~ 여러개
// ? = 0 ~ 1
let test = "aabc abc bc"

print(test.getArrayAfterRegex(regex: "a*b"))

print(test.getArrayAfterRegex(regex: "a+b"))

print(test.getArrayAfterRegex(regex: "a?b"))

// . , * + ?

// H 뒤에 문자 하나
print(str.getArrayAfterRegex(regex: "H."))

// H 뒤에 문자 0이상
print(str.getArrayAfterRegex(regex: "H.*"))

// H 뒤에 문자 1개 이상
print(str.getArrayAfterRegex(regex: "H.+"))

// H 뒤에 문자 0개 또는 1개
print(str.getArrayAfterRegex(regex: "H.?"))

// . 개수에 해당하는 만큼 출력
print(str.getArrayAfterRegex(regex: "H...."))
print(str.getArrayAfterRegex(regex: "He.."))

// 공백이 아닌 문자 1개 이상
print("Hi Hello".getArrayAfterRegex(regex: "[^ ]+"))

// 특수기호를 제외한 문자 뽑기
print("09:09*09!09ABCD".getArrayAfterRegex(regex: "[^:*!A-D]+"))

// 숫자만 꺼내기
print("09:09".getArrayAfterRegex(regex: "[0-9]+"))

// : 아닌 문자 1개 이상만 꺼내기
print("09:09".getArrayAfterRegex(regex: "[^:]+"))

// # 태그가 있는 단어 찾기
print(str.getArrayAfterRegex(regex: "#[a-zA-Z0-9]+"))

// 태그가 두개인 것을 그대로 뽑고 싶으면 # 붙이기
print(str.getArrayAfterRegex(regex: "#[a-zA-Z0-9#]+"))
// OR
print(str.getArrayAfterRegex(regex: "#[^ ]+"))

// # 태그가 있는 단어들을 찾아서 태그 떼고 소문자로 바꾸기
let sliceArray = str.getArrayAfterRegex(regex: "#[a-zA-Z0-9]+").map { (slice) in
    slice.replacingOccurrences(of: "#", with: "").lowercased()
}
print(sliceArray)


// 요일 예제
let test1 = "Monday is good, Tueday Friday"

// 방법 1)
print(test1.getArrayAfterRegex(regex: "(Mon|Tues|Fri)day"))
// 방법 2)
print(test1.getArrayAfterRegex(regex: "[a-zA-Z]+day"))
// 방법 3)
print(test1.getArrayAfterRegex(regex: "[^ ]+day"))

// 5글자 이상
print(test1.getArrayAfterRegex(regex: "[a-zA-Z]{5,}"))






