//
//  ContentView.swift
//  FontExample
//
//  Created by 양원석 on 2021/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
            Text("Flowing Text")
                .font(Font.system(size: 45, weight: .bold, design: .rounded))
                .modifier(FlowTextModifier(background: Image("SwiftGreen")))
        }.edgesIgnoringSafeArea(.all)
    }
}

public struct FlowTextModifier: ViewModifier {
    
    var image: Image
    @State var offset: CGPoint = .zero
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    
    init(background: Image) {
        self.image = background
    }
    
    
        public func body(content: Content) -> some View {
            content
                .overlay(
                    GeometryReader { geo in
                        ZStack(alignment: .center) {
                         image
                            .resizable()
                            .offset(x: offset.x - geo.size.width, y: offset.y)
                            .mask(content)
                            .onReceive(timer) { _ in
                                let newOffset = getNextOffset(size: geo.size, offset: offset)
                                
                                if newOffset == .zero {
                                    offset = newOffset
                                    withAnimation(.linear(duration: 0.5)) {
                                        offset = getNextOffset(size: geo.size, offset: newOffset)
                                    }
                                } else {
                                    withAnimation(.linear(duration: 0.5)) {
                                        offset = newOffset
                                    }
                                }
                            }
                    }
                }
            )
        }
}

    func getNextOffset(size: CGSize, offset: CGPoint) -> CGPoint {
        var nextOffset = offset
        
        if nextOffset.x > size.width * 2 {
            nextOffset.x = 0
        } else {
            nextOffset.x += size.width / 10.0
        }
        return nextOffset
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
