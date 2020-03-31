//
//  LoadLogin.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 3/30/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct LoadLogin: View {
    
    @EnvironmentObject var session: SessionStore
    
    func getUser() {
        session.listen()
    }
    var body: some View {
        Group {
            if (session.session != nil) {
                Text("Hello User!")
            } else {
                //authentication screen
                SignUpScreen()
            }
        }.onAppear(perform: getUser)
    }
    
    
}

struct LoadLogin_Previews: PreviewProvider {
    static var previews: some View {
        LoadLogin()
        .environmentObject(SessionStore())
    }
}
