import UIKit

/*:
 # continue
 */
// 반복문에서만 사용

// 가장 인접한 반복문에 영향을 줌
// 현재 실행중인 반복을 중지하고 다음 반복을 실행
for index in 1...10 {
    
    if index % 2 == 0 {
        continue
    }
    
    print(index)
}

for i in 1...10 {
    print("OUTER LOOP", i)
    
    for j in 1...10 {
        if j % 2 == 0 {
            continue
        }
        
        print(" INNER LOOP", j)
    }
}
