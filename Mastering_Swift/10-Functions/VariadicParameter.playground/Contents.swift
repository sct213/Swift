import UIKit

/*:
 # Variadic Parameters
 ![variadic](variadic.png)
 */
print("Hello")
print("Hello", "Swift")

// ...을 통해 같은 타입의 값을 여러개 전달 가능
// 가변 파라미터는 한가지의 파라미터에만 사용가능
// 기본값 선언 불가능 = default
func printSum(of nums: Int...) {
    var sum = 0
    for num in nums {
        sum += num
    }
    print(sum)
}

printSum(of: 1, 2, 3)

printSum(of: 1, 2, 3, 4, 5)



















