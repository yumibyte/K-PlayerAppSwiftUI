//
//  Auth.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 4/20/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI
import Firebase

class Auth: ObservableObject {
    
    @Published var user: User?
    var handle: AuthStateDidChangeListenerHandle?
    
    @EnvironmentObject var session: SessionStore

    
    init() {
        handle = Firebase.Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                self.user = User(
                    uid: user.uid,
                    displayName: user.displayName,
                    email: user.email
                )
            } 
        }
    }
}
