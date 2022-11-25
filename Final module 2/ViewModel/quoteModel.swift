//
//  quoteModel.swift
//  Final module 2
//
//  Created by Brian Nguyen on 2022-11-24.
//

import Foundation
class quoteModel : ObservableObject {
    @Published var quoteArray = [Quote]()
    init(){
        // Getting path
        let stringPath = Bundle.main.path(forResource: "data", ofType: "json")
        if let path = stringPath{
            let url = URL(filePath: path)
            do{
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                var jsonDecoded = try decoder.decode([Quote].self, from: data)
                
                for index in 0..<jsonDecoded.count{
                    jsonDecoded[index].id = UUID()
                }
                self.quoteArray = jsonDecoded
            }
            catch {
                print(error)
            }
            
        }
    }
}
