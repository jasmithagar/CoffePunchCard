//
//  ContentView.swift
//  CoffePunchCard
//
//  Created by Jasmitha G on 2/7/25.
//

import SwiftUI

struct ContentView: View {
        var coffeeShops = [
            "Starbucks",
            "Dunkin' Donuts",
            "Blue Bottle Coffee",
            "Peet's Coffee",
            "Tim Hortons",
            "abc"
            
        
        ]
        
        var body: some View {
            NavigationView {
                ZStack {
//                    Color.offWhite
                    
                    List(coffeeShops, id: \ .self) { shop in
//                        NavigationLink(destination: GroundUpView()){
//                            Text("Ground Up")
//                        }
                        ZStack(alignment: .center) {
                            
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.pink)
                                .frame(width: UIScreen.screenWidth * 0.85, height: UIScreen.screenHeight * 0.13, alignment: .center)

                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
//                            Text(shop)
                            NavigationLink(destination: GroundUpView()){
                                Text(shop)
                                    .frame(alignment: .center)
                                    .multilineTextAlignment(.center)
                            }
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        
                    }
                }
                .navigationBarTitle(Text("Coffee Shops"))
            }
        }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
