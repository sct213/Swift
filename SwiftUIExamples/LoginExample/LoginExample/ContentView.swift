//
//  ContentView.swift
//  LoginExample
//
//  Created by 양원석 on 2021/02/04.
//

import SwiftUI

struct ContentView: View {
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    // @State는 struct내의 값을 변경할 수 있게 해준다.
    // 지속 변형 가능한 변수를 만드는 것
    // 일반적으로 private로 다른 view와 공유되지 않는다.
    @State var username: String = ""
    @State var password: String = ""
    
    // @ObservedObejct를 통해 view가 외부 객체를 감지하게 해준다.
    // SwiftUI는 이러한 user객체의 @Published 변수 값이 변경될 때 view를 refresh한다.
    @ObservedObject var keyboardResponder = KeyboardResponder()
    var body: some View {
        NavigationView {
        VStack {
         Text("Welcome!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
        Image("SwiftGreen")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
            TextField("UserName", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
        
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
        
            Button(action: {print("Button tapped")}) {
            
            }
        Spacer()
        }
        .padding()
    }
        .offset(y: -keyboardResponder.currentHeight*0.9)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
