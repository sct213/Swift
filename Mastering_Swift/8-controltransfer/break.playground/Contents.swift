import UIKit

/*:
 # break
 */
let num = 1

switch num {
case 1...10:
    print("begin block")
    
    if num % 2 != 0 {
        break   // Switch문 종료
    }
    
    print("end block")
default:    // 어떠한 명령도 호출할 필요가 없다면 break
    break
}

print("done")

for index in 1...10 {
    print(index)
    
    if index > 1 {
        break
    }
}


for i in 1...10 {
    print("OUTER LOOP", i)
    
    for j in 1...10 {
        print("  INNER LOOP", j)
        
        if j < 1 {
            break
        }
    }
}
