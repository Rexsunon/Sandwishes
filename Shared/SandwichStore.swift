//
//  SandwichStore.swift
//  Sandwiches
//
//  Created by Evidence Osikhena on 21/12/2020.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let testStore = SandwichStore(sandwiches: testData)
