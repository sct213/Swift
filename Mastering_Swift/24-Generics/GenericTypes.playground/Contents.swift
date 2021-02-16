/*:
 # Generic Types
 ![generic-type](generic-type.png)
 */
struct Color<T> {
    var red: T
    var green: T
    var blue: T
}
// 생성자를 호출하면서 Int형의 리터럴을 전달함으로써 c는 Color<Int>가 됨
var c = Color(red: 128, green: 80, blue: 200)
// TypeParameter가 이미 Color<Int>로 정의되어 있으므로, Double형은 오류
//c = Color(red: 128.0, green: 80.0, blue: 200.0)

// 추론을 사용하지 않고 타입 선언 가능
let d: Color<Int>

// 다양한 형식을 처리하기 위해 Generic타입으로 만들어짐
let arr: Array<Int>
// 마찬가지.
let dict: Dictionary<String, Double>

// extension Color<T>로는 불가함
extension Color {
    func getComponents() -> [T] {
        return [red, green, blue]
    }
}

// Color<Int>로 추론됨
let intColor = Color(red: 1, green: 2, blue: 3)
intColor.getComponents()

// Color<Double>로 추론됨
let dblColor = Color(red: 1.0, green: 2.0, blue: 3.0)
dblColor.getComponents()
















