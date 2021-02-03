import UIKit
// 연관값
/*:
 # Associated Values
 ![associated-values](associated-values.png)
 */

enum VideoInterface {
    case dvi(width: Int, height: Int)
    case hdmi(Int, Int, Double, Bool)
    case displayPort(CGSize)
}

// 연관값으로 저장
var input = VideoInterface.dvi(width: 2048, height: 1536)

switch input {
    case .dvi(2048, 1536):
        print("dvi")
    case .dvi(2048, _):
        print("dviAny")
    case .dvi:
        print("T dvi")
    case .hdmi(let width, let height, let version, var audioEnabled):
        print("hdmi \(width)x\(height)")
    case let .displayPort(size):
        print("dp")
}

input = .hdmi(3840, 2160, 2.1, true)
