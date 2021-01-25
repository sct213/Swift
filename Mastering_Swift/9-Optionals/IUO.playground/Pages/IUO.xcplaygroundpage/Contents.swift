import Foundation

/*:
 # Implicitly Unwrapped Optionals
 ![iuo](iuo.png)
 */
// 암시적 추출 옵셔널
// 값을 강제로 자동으로 추출하는 옵셔널
// 실제 코딩에서 잘 사용되진 않음
// 자료형 뒤에 !가 오는 것은 IUO
let num: Int! = 12

// 타입 추론을 통한 변수나 상수는 ?로 됨
let a = num
a

// 타입을 지정하면 !가 대입됨
let b: Int = num
b

// IUO도 옵셔널이나 자동으로 추출됨, 강제 추출도 가능, 바인딩 가능
// 옵셔널과 바인딩을 사용하는 게 더 효과적인 에러 방지이므로 IUO는 이론적으로만 알고 있자
