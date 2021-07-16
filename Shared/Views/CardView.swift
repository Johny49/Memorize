//
//  CardView.swift
//  Memorize
//
//  Created by Geoffrey Johnson on 7/10/21.
//

import SwiftUI

struct CardView: View {
    var content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3).foregroundColor(.blue)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill().foregroundColor(.blue)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "🥳", isFaceUp: true)
    }
}
