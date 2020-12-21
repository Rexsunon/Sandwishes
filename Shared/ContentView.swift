//
//  ContentView.swift
//  Shared
//
//  Created by Evidence Osikhena on 21/12/2020.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach (sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                
                HStack {
                    Spacer()
                    Text("\(sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: Text(sandwich.name)) {
            Image(systemName: "photo")
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingreduentCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
