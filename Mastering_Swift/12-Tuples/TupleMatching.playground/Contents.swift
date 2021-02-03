import UIKit

/*:
 # Tuple Matching
 */
let resolution = (3840.0, 2160.0)

// 한줄이 너무 길어 가독성을 해침
if resolution.0 == 3840 && resolution.1 == 2160 {
    print("4K")
}

// switch는 튜플을 허용함으로 if보다 단순해진다
switch resolution {
    case let(w, h) where w / h == 16.0 / 9.0:
        print("16:9")
    // 한 가지의 값만 매치하기 위해 UnderScore
    case (_, 1080):
        print("1080P")
    case (3840...4096, 2160):
        print("4K")
    default:
        break
}
























