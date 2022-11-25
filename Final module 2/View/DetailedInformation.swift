//
//  DetailedInformation.swift
//  Final module 2
//
//  Created by Brian Nguyen on 2022-11-25.
//

import SwiftUI

struct DetailedInformation: View {
    var quoteData:Quote
    var body: some View {
        NavigationView {
            VStack(spacing: 10){
                Text(quoteData.DetailedInformation)
                    .font(.body)
                Spacer()
                Text(quoteData.Quotes)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                Spacer()
            }.padding().navigationTitle(quoteData.Author)
        }
    }
}

struct DetailedInformation_Previews: PreviewProvider {
    static var previews: some View {
        let quote = Quote(Quotes: "Quote", Author: "Brian Nguyen", DetailedInformation: "No detailed information here", Image: "pic2")
        DetailedInformation(quoteData: quote)
    }
}
