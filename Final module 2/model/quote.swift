//
//  quote.swift
//  Final module 2
//
//  Created by Brian Nguyen on 2022-11-24.
//

import Foundation

struct Quote : Identifiable, Decodable {
    var id:UUID?
    var Quotes:String
    var Author:String
    var DetailedInformation:String
    var Image:String
    
}
