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
    @State private var isActive: Bool = false

    @State var displayName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var loading = false
    @State var error = false
    
    @EnvironmentObject var session: SessionStore
    
    func signUp() {
        loading = true
        error = false
        session.signUp(email: email, password: password) { (result, error) in
            self.loading = false
            if error != nil {
                print(error)
                self.error = true
                
                print(self.error)
            } else {
                self.email = ""
                self.password = ""
                self.isActive = true
            }
            
        }
    }
    
        
    var body: some View {
    
    //MARK: - UITextFields
        VStack(spacing: 110) {
            
                Text("Register for K-Player")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                    .offset(y: -30)
            VStack(spacing:10) {
                TextField("Username", text: $displayName) .padding()
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1.0))
                .scaleEffect(0.85)
                .autocapitalization(.none)
                .disableAutocorrection(.none)
                
                TextField("Email", text: $email) .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1.0))
                    .scaleEffect(0.85)
                .autocapitalization(.none)

                SecureField("Password", text: $password)
                    .padding() .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1.0))
                    .scaleEffect(0.85)
                    .environmentObject(self.session)
                
                
    //MARK: - Sign up Handling
                
                if (error) {
                    Text("unable to sign up")
                }
                
                
    //MARK: - Sign up Options
                Button(action: signUp) {
                    
                    
                    Text("Sign up")
                        .frame(width: 335, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15.0)
                        .padding()
                    
                    NavigationLink(destination: LoginScreen(), isActive: $isActive) {
                        EmptyView()
                    }
                    
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
