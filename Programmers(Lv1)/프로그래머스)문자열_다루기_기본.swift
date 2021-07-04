func solution(_ s:String) -> Bool {
    let strArray = Array(s)
    
    // s의 길이가 4 혹은 6이고, 숫자로만 구성됐는지
    if strArray.count == 4 || strArray.count == 6 {
        // 문자열 s가 숫자로만 구성되어 있는지 
        // -> Int 생성자를 사용하여 캐스팅이 되는지 확인한다.
        if Int(s) != nil {
            return true
        }
    }
    
    return false
    // 한줄만들기
    // return (s.count == 4 || s.count == 6) && (Int(s) != nil) ? true : false
}

print(solution("a234"), solution("1234"))