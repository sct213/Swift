//
//  MorseTranslate.swift
//  LoginExample
//
//  Created by 양원석 on 2021/02/04.
//

import Foundation

class MorseCode {
    let inputMorse: Dictionary = [".-":"A","-.":"N","-...":"B","---":"O","-.-.":"C",".--.":"P",
        "-..":"D","--.-":"Q",".":"E",".-.":"R","..-.":"F","...":"S",
        "--.":"G","-":"T","....":"H","..-":"U","..":"I","...-":"V",
        ".---":"J",".--":"W","-.-":"K","-..-":"X",".-..":"L","-.--":"Y",
        "--":"M","--..":"Z"]
    
    // 입력된 메시지 저장(저장할 때 중간중간 빈칸을 삽입하여 번역하게 할 것)
    var inputMessage: String = " "

    // inputMessage를 빈칸 기준으로 잘라내어 배열로 대입
    let arr: [String] = []
    
    // 배열에 저장된 모스부호를 알파벳으로 변형시킴
    func translateMessage(_ code: String) -> String {
        
        var output: String = ""
        
        for alphabet in arr {
            switch alphabet {
                case ".-":
                    output += "A"
                case "-....":
                    output += "B"
                case "-.-.":
                    output += "C"
                case "-..":
                    output += "D"
                case ".":
                    output += "E"
                case "..-.":
                    output += "F"
                case "--.":
                    output += "G"
                case "....":
                    output += "H"
                case "..":
                    output += "I"
                case ".---":
                    output += "J"
                case "-.-":
                    output += "K"
                case ".-..":
                    output += "L"
                case "-.":
                    output += "N"
                case "--":
                    output += "M"
                case "---":
                    output += "O"
                case ".--.":
                    output += "P"
                case "--.-":
                    output += "Q"
                case ".-.":
                    output += "R"
                case "...":
                    output += "S"
                case "-":
                    output += "T"
                case "..-":
                    output += "U"
                case "...-":
                    output += "V"
                case ".--":
                    output += "W"
                case "-..-":
                    output += "X"
                case "-.--":
                    output += "Y"
                case "--..":
                    output += "Z"
                default:
                    print("ERROR")
            }
        }
        return output
    }
}




