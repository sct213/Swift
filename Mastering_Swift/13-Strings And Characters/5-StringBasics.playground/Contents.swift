//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # String Basics
 */
var str = "Swift test"

// 공백 문자 선언
var emptyStr = ""
var emptyString = String()

// 타입 변환
let trueStr = String(true)
var numStr = String(12)
numStr = String(12.34)

// 진수 변환
let hex = String(123, radix: 16)
let octal = String(123, radix: 8)
let binary = String(123, radix: 2)

// repeating을 통한 문자열 생성
let repeatingStr = String(repeating: "👏", count: 8)

// unicode로 이모티콘 넣기
let repeatStr = "\u{1f44f}"

// 문자열 합치기
var f = str + " " + repeatStr
f += repeatStr

// 문자열 길이
str.count

// 대소문자
str.lowercased()
str.uppercased()

// 비어 있는지 확인
str.isEmpty

// 각 단어의 첫번째 단어를 대문자로 자동 변환(Upper Camel Case)
//"apple test".capitalized

// 문자열에 각 문자 출력
for char in "Hello" {
    print(char)
}

// 해당 값 중 랜덤한 값 하나를 출력
let num = "test"
num.randomElement()

// 문자열을 랜덤으로 섞어서 문자 배열로 return해 줌
let shuffledNum = num.shuffled()
type(of: shuffledNum)

