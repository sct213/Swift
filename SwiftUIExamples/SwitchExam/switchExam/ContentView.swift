//
//  ContentView.swift
//  switchExam
//
//  Created by 양원석 on 2021/02/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            VStack {
            Button(action: {
                
            }) {
                Text("These")
            }
            .buttonStyle(GradientBackgroundStyle(colors: [.purple, .pink], tappedColors: [.green, .blue]))
            Button(action: {
                
            }) {
                Text("Buttons")
            }
            .buttonStyle(GradientBackgroundStyle(colors: [.purple, .pink], tappedColors: [.green, .blue]))
            Button(action: {
                
            }) {
                Text("Scale")
            }
            .buttonStyle(GradientBackgroundStyle(colors: [.purple, .pink], tappedColors: [.green, .blue]))
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    
    var colors: [Color]
    var tappedColors: [Color]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, idealWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(configuration.isPressed ? LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: tappedColors), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(10)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}
