//
//  ContentView.swift
//  CardFlipView
//
//  Created by 양원석 on 2021/02/02.
//

import SwiftUI
// ContentView 1/4
struct ContentView: View {
    @State var flippedCard: Int?
    @State var frontCard: Int?
    let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    let cardName = ["", "2C", "2D", "2H", "2S", "3C", "3D", "3H", "3S", "4C", "4C", "4C", "4D"]
    
    var body: some View {
        let columns = [
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0)
        ]
// ContentView 2/4
        GeometryReader { screenGeometry in
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 40) {
                    ForEach(cards, id: \.self) { card in
                        let isFaceUp = flippedCard == card
                        GeometryReader { cardGeometry in
                            ZStack {
                                CardBackView(card: card)
                                    .modifier(FlipOpacity(pct: isFaceUp ? 0 : 1))
                                    .rotation3DEffect(Angle.degrees(isFaceUp ? 180 : 360), axis: (0, 1, 0))
                                    .frame(width: cardGeometry.size.width, height: cardGeometry.size.height)
                                    .scaleEffect(isFaceUp ? screenGeometry.size.width / cardGeometry.size.width: 1)
                                CardFrontView(card: card, cardName: cardName[card])
                                    .modifier(FlipOpacity(pct: isFaceUp ? 1 : 0))
                                    .rotation3DEffect(Angle.degrees(isFaceUp ? 0 : 180), axis: (0, 1, 0))
                                    .frame(width: screenGeometry.size.width, height: screenGeometry.size.width)
                            }
                            .offset(x: isFaceUp ? -cardGeometry.frame(in:
                                .named("TrumpCards")).origin.x: -screenGeometry.size.width/2 + cardGeometry.size.width/2,
                                    y: isFaceUp ? -cardGeometry.frame(in: .named("TrumpCards")).origin.y: -screenGeometry.size.height/2 + cardGeometry.size.height/2)
                            .onTapGesture {
                                withAnimation(.linear(duration: 1.0)) {
                                    if flippedCard == nil {
                                        flippedCard = card
                                        frontCard = card
                                    } else if flippedCard == card {
                                        flippedCard = nil
                                    }
                                }
                            }
                        }
// ContentView 3/4
                        .aspectRatio(1, contentMode: .fit)
                        .zIndex(frontCard == card ? 1 : 0)
                    }
                }.padding()
            }
        }
        .coordinateSpace(name: "TrumpCards")
    }
}

struct FlipOpacity: AnimatableModifier {
    var pct: CGFloat = 0
    
    var animatableData: CGFloat {
        get { pct }
        set { pct = newValue }
    }
    
    func body(content: Content) -> some View {
        return content.opacity(Double(pct.rounded()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//ContentView 4/4
struct CardBackView: View {
    var card: Int
    
    var body: some View {
        Image("gray_back")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct CardFrontView: View {
    var card: Int
    var cardName: String
    
    var body: some View {
        Image(cardName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
