//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by 양원석 on 2021/01/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 엣지부분까지 배경색 채우기
            Spacer().background(Color.blue).edgesIgnoringSafeArea(.all)
            
            // 앱의 이름
            AppTitle()
            // 아이디 입력 칸
            HStack {
                Image(systemName: "envelope").frame(width: iconWidth)
                TextField("ID / E-MAIL Address", text: $email)
                    .frame(width: inputWidth, height: inputHeight)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }
            // 비밀번호 입력 칸
            HStack {
                Image(systemName: "lock").frame(width: iconWidth)
                SecureField("Password", text: $password)
                    .frame(width: inputWidth, height: inputHeight)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }
        }
    }
}
/**
 line of text width optional markup
 ...
 */
// 구조체를 이용한 호출
struct AppTitle: View {
    var body: some View {
        VStack {
            Text("App Name")
                .font(.title)
                .fontWeight(.medium)
                .padding()
        }
        .frame(maxHeight: 250, alignment: .center)
    }
}

// 자동로그인
struct LoginAction: View {
    @State private var isOn = true
    
    init() {
        UISwitch.appearance().onTintColor       = .gray
        UISwitch.appearance().thumbTintColor    = .white
    }
    
    var body: some View {
        HStack {
            Toggle(isOn: $isOn) {
                Text("자동")
            }
            .frame(width: 90, height: 40)
            
            Button(action: { } ) {
                Text("로그인")
                    .frame(width: 80, height: 10)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
