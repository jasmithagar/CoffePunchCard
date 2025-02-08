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
        CoffeeShop(name: "Demitasse", destinationView: AnyView(DemitasseView())),
        CoffeeShop(name: "Cor Coffee", destinationView: AnyView(CorCoffeeView())),
        CoffeeShop(name: "Kiubo", destinationView: AnyView(KiuboView())),
        CoffeeShop(name: "TwoShades", destinationView: AnyView(TwoShadesView())),
        CoffeeShop(name: "Tasa", destinationView: AnyView(TasaView()))
    ]

    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            NavigationView {
                List(coffeeShops) { shop in
                    NavigationLink(destination: shop.destinationView) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.cyan)
                                .opacity(0.5)
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                //.shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                            
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
                .navigationBarTitle(Text("Coffee Shops"))
                .background(Color.pink) // Ensure the list has a transparent background
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
