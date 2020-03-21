//
//  LoginScreen.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 3/18/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI
<<<<<<< HEAD

<<<<<<< HEAD
=======
import SwiftUI
=======
>>>>>>> parent of 133dfe5... added reusable UIViewController for GoogleSignIn and modified all Doubles/Floats with CGFloat()

>>>>>>> develop
struct LoginScreen: View {
    
    @State private var username:String = ""
    @State private var password:String = ""
    
    var body: some View {
    
    //MARK: - Header
        
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> parent of 133dfe5... added reusable UIViewController for GoogleSignIn and modified all Doubles/Floats with CGFloat()
=======
>>>>>>> parent of 133dfe5... added reusable UIViewController for GoogleSignIn and modified all Doubles/Floats with CGFloat()
>>>>>>> develop
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
    
    //MARK: - Sign in with social option
//struct SocialLogin: UIViewRepresentable {
//
//    func makeUIView(context: UIViewRepresentableContext<SocialLogin>) -> UIView {
//        return UIView()
//
//    }
//
//    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SocialLogin>) {
//    }
//
//    func attemptLoginGoogle() {
//        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
//        GIDSignIn.sharedInstance()?.signIn()
//    }
//
//}
=======
>>>>>>> parent of 133dfe5... added reusable UIViewController for GoogleSignIn and modified all Doubles/Floats with CGFloat()
=======
>>>>>>> parent of 133dfe5... added reusable UIViewController for GoogleSignIn and modified all Doubles/Floats with CGFloat()
>>>>>>> develop

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
