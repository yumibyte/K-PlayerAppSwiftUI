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
        
        //Header
        VStack {
            ZStack {
                    
                Rectangle()
                    .frame(width: 380, height: 200)
                    .cornerRadius(10)
                Text("Welcome to K-Player!")
                    .font(.title)
                    .foregroundColor(.white)
                
            }
            .offset(y: -280)
            
            
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
