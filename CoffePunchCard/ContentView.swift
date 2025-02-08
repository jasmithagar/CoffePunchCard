//
//  ContentView.swift
//  CoffePunchCard
//
//  Created by Jasmitha G on 2/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                FavoritesView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favorites")
                    }
                Text("Name: Sanjana Challagundla")
                    .tabItem {
                        Image(systemName: "tv.fill")
                        Text("Profile")
                    }
            }
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
