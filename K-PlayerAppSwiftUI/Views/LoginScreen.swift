//
//  LoginScreen.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 3/18/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var username:String = ""
    @State private var password:String = ""
    
    var body: some View {
    
    //MARK: - Header
        
    //MARK: - UITextFields
        VStack() {
            
                Text("Sign in to K-Player")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                    .padding(70)
            
        
            VStack() {
                TextField("Username", text: $username) .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1.0))
                    .scaleEffect(0.85)
                
                SecureField("Password", text: $password)
                    .padding() .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1.0))
                    .scaleEffect(0.85)
                
                //MARK: - Login Options
                Button(action: {
                    print("hi!")
                }) {
                    
                    Text("Log in ")
                        .frame(width: 335, height: 50)
                        
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15.0)
                        .padding(30)
                }
            
        
                
                
            }

        
        }
    .offset(x: 0, y: -80)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
