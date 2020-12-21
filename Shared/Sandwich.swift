//
//  Sandwich.swift
//  Sandwiches
//
//  Created by Evidence Osikhena on 21/12/2020.
//

import Foundation

struct Sandwich: Identifiable {
    var id = UUID()
    var name: String
    var ingreduentCount: Int
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "_tn" }
}

let testData = [
    Sandwich(name: "Club", ingreduentCount: 4, isSpicy: false),
    Sandwich(name: "Pastrami on rye", ingreduentCount: 4, isSpicy: true),
    Sandwich(name: "French dip", ingreduentCount: 3, isSpicy: false),
    Sandwich(name: "Ice cream sandwich", ingreduentCount: 2, isSpicy: false),
    Sandwich(name: "Hot dog", ingreduentCount: 2, isSpicy: true),
]
