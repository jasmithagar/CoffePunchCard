//
//  ContentView.swift
//  CoffePunchCard
//
//  Created by Jasmitha G on 2/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            VStack(alignment: .leading) {
                Text("1")
            }
            // aligns views to the left (L to R)

            VStack(alignment: .center) {
                Text("2")
            }
            // aligns views in the middle (default)

            VStack(alignment: .trailing) {
                Text("3")
            }
            // aligns views to the right (R to L)
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
