//
//  LoginScreen.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 3/18/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI
import Firebase

struct LoginScreen: View {
    
    @State private var username:String = ""
    @State private var password:String = ""
    
    var body: some View {
    
    
    //MARK: - UITextFields
        VStack(spacing: 110) {
            
                Text("Sign in to K-Player")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
<<<<<<< HEAD
<<<<<<< HEAD
                    .padding(40)
=======
>>>>>>> FirebaseInitialization
=======
>>>>>>> FirebaseInitialization
            
                    .padding()
            VStack(spacing:10) {
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
                        .padding(10)
                }
                .padding(20)
                LabelledDivider(label: "OR", horizontalPadding: 10, color: .gray)
                
                    
                Button(action: {
                    
                    print("Sign up!")
                
                }) {
                    Text("Sign up")

                        .foregroundColor(.gray)
                    
                        .underline()
                    .padding(20)

                }
            }

        
        }
        
    }
}

// Dividers w/ titles
struct LabelledDivider: View {

    let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(label: String, horizontalPadding: CGFloat = 20, color: Color = .gray) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
            Text(label).foregroundColor(color)
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
            .frame(width: 155)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
