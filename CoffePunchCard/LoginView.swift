//
//  LoginView.swift
//  CoffePunchCard
//
//  Created by Neha Kamat on 2/8/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false

    
    var body: some View {
        NavigationView{
            ZStack{
                Color.cyan.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.5))
                Circle().scale().foregroundColor(.white.opacity(0.8))
                
                VStack{
                    Text("Login").font(.largeTitle).bold().padding()
                    
                    TextField("Username", text: $username).padding().frame(width:300, height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width:CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password).padding().frame(width:300, height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width:CGFloat(wrongPassword))
                        .padding()
                    
                
                    
                    NavigationLink(destination: ContentView()){
                        Text("Login")
                            .frame(alignment: .center)
                            .multilineTextAlignment(.center)
                            .frame(width:300, height: 50)
                            .foregroundColor(.white)
                            .background(Color.cyan)
                            .cornerRadius(10)
                            
                    }
                    
                }
                
            }
            .navigationBarHidden(true)
        }
    }
    func authenticateUser(username:String, password:String) {
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
