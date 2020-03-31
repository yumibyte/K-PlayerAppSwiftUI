//
//  SignUp.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 3/30/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI
import Firebase

struct SignUpScreen: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var loading = false
    @State var error = false
    
    @EnvironmentObject var session: SessionStore
    
    // Signup method
    
    func signUp () {
        loading = true
        error = false
        session.signUp(email: email, password: password) { (result, error) in
            self.loading = false
            if error != nil {
                self.error = true
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    
    var body: some View {
    
    
    //MARK: - UITextFields
        VStack(spacing: 80) {
            
                Text("Register for K-Player")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
            
//                    .padding()
            VStack(spacing:10) {
                TextField("Email", text: $email) .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1.0))
                    .scaleEffect(0.85)
                
                SecureField("Password", text: $password)
                    .padding() .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1.0))
                    .scaleEffect(0.85)
                
                //MARK: - Sign up Handling
                if (error) {
                    Text("unable to sign in")
                }
                
                //MARK: - Sign up Options
                Button(action: signUp) {
                    
                    Text("Sign up")
                        .frame(width: 335, height: 50)
                        
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15.0)
                        .padding(10)
                }

                
            }

        
        }
        
    }
}


struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
