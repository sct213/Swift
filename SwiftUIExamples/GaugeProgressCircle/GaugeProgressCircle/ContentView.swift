//
//  ContentView.swift
//  GaugeProgressCircle
//
//  Created by 양원석 on 2021/02/25.
//

import SwiftUI

struct ContentView: View {
   
    @State var progress = 0.2
    
    var body: some View {
        VStack {
            ProgressView("Label", value: progress, total: 1.0)
                .progressViewStyle(GaugeProgressStyle())
            
            HStack {
                Button(action: {
                    if progress > 0.1 { withAnimation { progress -= 0.1 } }
                }){}
                
                Button(action: {
                    if progress < 0.1 { withAnimation { progress += 0.1 } }
                }){}
            }
            .padding()
        }
    }
}

struct GaugeProgressStyle: ProgressViewStyle {
    
    var trimAmount = 0.7
    var strokeColor = Color.blue
    var strokeWidth = 25.0
    let formatter = NumberFormatter()
    
    var rotation: Angle {
        Angle(radians: .pi * (1 - trimAmount)) + Angle(radians: .pi/2)
    }
    
    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0
        formatter.numberStyle = .percent
        let percentage = formatter.string(from: fractionCompleted as NSNumber) ?? "0%"
        
        return ZStack {
            Circle()
                .rotation(rotation)
                .trim(from: 0, to: CGFloat(trimAmount))
                .stroke(Color.init(.secondarySystemBackground),
                        style: StrokeStyle(lineWidth: CGFloat(strokeWidth), lineCap: .round))
            
            Text(percentage)
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .animation(nil)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
