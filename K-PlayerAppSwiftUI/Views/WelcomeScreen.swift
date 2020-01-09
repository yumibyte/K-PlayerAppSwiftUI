//
//  ContentView.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 11/26/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        
        //Welcome to K-Player!
        
        VStack {
            HeaderDetail()
                .offset(y: -280)
            Divider()
            
        }
    
        
        
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
