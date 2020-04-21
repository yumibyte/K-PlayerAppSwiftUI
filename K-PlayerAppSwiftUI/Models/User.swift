//
//  User.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 4/16/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import Foundation

class User {
    var uid: String
    var displayName: String?
    var email: String?
    var password: String?
    
    init(uid: String, displayName: String?, email: String?, password: String?) {
        self.uid = uid
        self.displayName = displayName
        self.email = email
        self.password = password
        
    }
}
