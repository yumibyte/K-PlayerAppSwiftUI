//
//  LoginScreen.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 3/18/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI
import GoogleSignIn

struct LoginScreen: View {
    
    @State private var username:String = ""
    @State private var password:String = ""
    
    var body: some View {
    
        
    //MARK: - UITextFields and login button
        VStack() {
            
                Text("Sign in to K-Player")
//                    .font(.largeTitle)
//                    .foregroundColor(.primary)
//                    .padding(70)
        
            VStack() {
                TextField("Username", text: $username) .padding()
                    .overlay(RoundedRectangle(cornerRadius: CGFloat(8)).stroke(Color.gray, lineWidth: CGFloat(1.0)))
                    .scaleEffect(0.85)
                
                SecureField("Password", text: $password)
                    .padding() .overlay(RoundedRectangle(cornerRadius: CGFloat(8)).stroke(Color.gray, CGFloat(lineWidth: 1.0)))
                    .scaleEffect(0.85)
                
                //MARK: - Login Options
                Button(action: SocialLogin.attemptLoginGoogle, label: {
                    Text("Login in")
                }) {
                    
                        .frame(width: 335, height: CGFloat(50))
                        
                        .background(Color.blue)
                        .foregroundColor(.white)
                        
                        .cornerRadius(CGFloat(15.0))
                        .padding(30)
                }
            
        
                
                
            }

        
        }
    .offset(x: 0, y: -80)
    }
}
    
    //MARK: - Sign in with social option
struct SocialLogin: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<SocialLogin>) -> UIView {
        return UIView()
        
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SocialLogin>) {
    }
    
    func attemptLoginGoogle() {
        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
        GIDSignIn.sharedInstance()?.signIn()
    }
    
}
   
    


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
