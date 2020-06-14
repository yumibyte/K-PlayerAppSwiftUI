//
//  SceneDelegate.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 11/26/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import UIKit
import SwiftUI
import Firebase
import FirebaseAuth
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        if let windowScene = scene as? UIWindowScene {
            
            let window = UIWindow(windowScene: windowScene)
            self.window = window
            
            let vc = UIHostingController(rootView: LoginScreen().environmentObject(SessionStore()))
            window.rootViewController = vc
//            window.rootViewController = UIHostingController(
//                rootView: LoginScreen().environmentObject(SessionStore())
//            )
            window.makeKeyAndVisible()
        }
    }


}

