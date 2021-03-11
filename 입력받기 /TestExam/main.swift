import Foundation

/**
    # readLine 파헤치기
    
    - Declaration : func readLine(strippingNewline: Bool = true) -> String?
    - 설명 : 표준 입력을 받아 "문자열"로 반환한다.
            이 점에 주의하여 입력한 데이터를 입맛에 맞게 타입을 변환하여 사용한다.
            
    - 옵셔널 : String?으로 Optional이므로, 언래핑이 필요하다.
             
 */
// 한개의 정수 입력받기
let inputValues = Int(readLine()!)!

let inputValues1 = Int(readLine()!)!

print(inputValues + inputValues1)

print("한 줄에 두가지 입력")
// 한 줄에 두가지 입력 받기
let inputLine = readLine()!.split(separator: " ").map { Int($0)! }

// N개의 줄만큼 입력받기
func setNumberForReadLine() {
    
    var lines = [Int]()
    let N = Int(readLine()!)!
    for _ in 0..<N { lines.insert(Int(readLine()!)!, at: 0) }
    
    print(lines)
}

// Components
let valueArr = readLine()!.components(separatedBy: " ")



