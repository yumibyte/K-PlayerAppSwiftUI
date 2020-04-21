//
//  Auth.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 4/20/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import Foundation
import Firebase

class Auth: ObservableObject {
    
    @Published var user: User?
    var handle: AuthStateDidChangeListenerHandle?
    
    init() {
        handle = Firebase.Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                self.user = User(
                    uid: String,
                    displayName: String?,
                    email: String?,
                    password: String?
                )
            } else {
                self.session = nil
            }
        }
    }
}
