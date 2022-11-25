//
//  ContentView.swift
//  Final module 2
//
//  Created by Brian Nguyen on 2022-11-24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var quo = quoteModel()
    var body: some View {
        NavigationView() {
            ScrollView{
                
                ForEach(quo.quoteArray){ q in
                    NavigationLink(destination: DetailedInformation(quoteData: q)) {
                        Card(quoteObject: q)
                    }
                }.padding(.vertical)
            }.navigationBarTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
