//
//  Card.swift
//  Final module 2
//
//  Created by Brian Nguyen on 2022-11-24.
//

import SwiftUI

struct Card: View {
    var quoteObject:Quote
    var body: some View {
        ZStack{
            Image(quoteObject.Image)
                .resizable()
                .scaledToFill()
                .blur(radius: 1)
            VStack(alignment: .leading){
                Text(quoteObject.Quotes).foregroundColor(.white).font(.title).fontWeight(.bold).multilineTextAlignment(.leading).lineLimit(4).frame(width: 330)
                Text("-" + quoteObject.Author).foregroundColor(.white).font(.title2).multilineTextAlignment(.leading).frame(width: 330)
            }.padding()
                
        }.frame(width: 350, height: 380).cornerRadius(20)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(quoteObject: Quote(id: UUID(), Quotes: "My love is like a warm breeze", Author: "Lovelace", DetailedInformation: "No detailed information here", Image: "pic5"))
    }
}
