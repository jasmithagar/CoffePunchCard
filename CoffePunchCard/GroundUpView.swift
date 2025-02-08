//
//  GroundUpView.swift
//  CoffePunchCard
//
//  Created by Jasmitha G on 2/8/25.
//

import SwiftUI
extension UIScreen {
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
}

//struct GroundUpView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
    
    
    //
    struct GroundUpView: View {
        var coffeeShops = [
            "Starbucks",
            "Dunkin' Donuts",
            "Blue Bottle Coffee",
            "Peet's Coffee",
            "Tim Hortons"
        ]
        
        var body: some View {
            NavigationView {
                ZStack {
//                    Color.offWhite
                    
                    List(coffeeShops, id: \ .self) { shop in
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.brown)
                                .frame(width: UIScreen.screenWidth * 0.85, height: UIScreen.screenHeight * 0.13, alignment: .center)

                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                            Text(shop)
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
    //
    
    
//}

struct GroundUpView_Previews: PreviewProvider {
    static var previews: some View {
        GroundUpView()
    }
}
