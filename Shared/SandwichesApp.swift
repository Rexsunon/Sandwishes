//
//  SandwichesApp.swift
//  Shared
//
//  Created by Evidence Osikhena on 21/12/2020.
//

import SwiftUI

@main
struct SandwichesApp: App {
    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
