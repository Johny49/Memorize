//
//  ContentView.swift
//  Shared
//
//  Created by Geoffrey Johnson on 7/10/21.
//

import SwiftUI

struct MemorizeView: View {
    var emojis = ["😆","😛","🥸","🤓", "😇", "😻", "🎃", "🥨", "🐾"]
    var body: some View {
        ScrollView {
            VStack {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75, maximum: 1000))]) {
                    ForEach(emojis, id: \.self) { emoji in CardView(content: emoji, isFaceUp: false).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemorizeView()
            
            
    }
}
