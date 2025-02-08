//
//  ContentView.swift
//  CoffePunchCard
//
//  Created by Jasmitha G on 2/7/25.
//

import SwiftUI

struct CoffeeShop: Identifiable {
    let id = UUID()
    let name: String
    let destinationView: AnyView
}

struct ContentView: View {
    let coffeeShops = [
        CoffeeShop(name: "GroundUp", destinationView: AnyView(GroundUpView())),
        CoffeeShop(name: "CorCoffee", destinationView: AnyView(CorCoffeeView())),
        CoffeeShop(name: "Blue Bottle Coffee", destinationView: AnyView(GroundUpView())),
        CoffeeShop(name: "Peet's Coffee", destinationView: AnyView(GroundUpView())),
        CoffeeShop(name: "Tim Hortons", destinationView: AnyView(GroundUpView()))
    ]

        var body: some View {
            NavigationView {
                
                    List(coffeeShops) { shop in
                        NavigationLink(destination: shop.destinationView){
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.cyan)
                                    .opacity(0.5)
//                                    .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.13)
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                                
                                VStack {
                                    let imageName = shop.name + "Logo"
                                    Image(imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.1)
                                    
                                    Text(shop.name)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.black)
                                        .multilineTextAlignment(.center)
                                }
                                
                                .padding()
                            }
                        }
                    }
                .navigationBarTitle(
                    Text("Coffee Shops"))

            }
            .background(Color.pink)
            
        }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
