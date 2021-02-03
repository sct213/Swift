import UIKit

/*:
 # Named Tuples
 ![expr](expr.png)
 ![eme](eme.png)
 */

let data = ("<html>", 200, "ok", 12.34)

// 접근은 가능하나 직관적이지 않음
data.0

let named = (body: "<html>", status: 200, statusMassage: "OK", dataSize: 12.34)

named.1
// 멤버 이름으로 사용 가능(가독성이 높아짐)
named.status

















