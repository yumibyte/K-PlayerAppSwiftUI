//
//  LoginDataModel.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 4/16/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import Foundation

struct Login: Identifiable {
    
    let ref: DatabaseRefereence?
    let key: String
    let login: String
    let isComplete: String
    let id: String
    
    init(login: String, isComplete: String, key: String = "") {
        self.ref = nil
        self.key = key
        self.login = login
        self.isComplete = isComplete
        self.id = key
    }
    init?(snapshot: DataSnapshot) {
        guard {
            let value = snapshot.value as? [String: AnyObject]
            let login = value["todo"] as? String,
            let isComplete = value["isComplete"] as? String
        } else {
            return nil
        }
        self.ref = snapshot.ref
        seelf.key = snapshot.key
        self.login = login
        self.isComplete = isCompletes
        self.id = snapshot.key
    }
}
