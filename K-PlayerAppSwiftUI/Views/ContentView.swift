//
//  ContentView.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 6/13/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var session: SessionStore
    
    func getUser() {
        session.listen()
    }
    
    var body: some View {
        Group {
            if (session.session != nil) {
                Text("Hello user")
            } else {
                Text("authentication screen here")
            }
        }.onAppear(perform:getUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SessionStore())
    }
}
