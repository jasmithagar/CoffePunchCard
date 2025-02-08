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
            VStack(alignment: .center) {
                
                NavigationStack {
                    NavigationLink(destination: SecondView()) {
                        Text("Ground Up")
                    }
                    .buttonStyle(.borderedProminent)
                    NavigationStack {
                        NavigationLink(destination: ThirdView()) {
                            Text("Cor Coffee")
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
            }
            
        }
        
        .padding()
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
