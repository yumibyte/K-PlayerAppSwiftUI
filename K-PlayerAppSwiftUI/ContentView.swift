//
//  ContentView.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 11/26/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Header
        ZStack {
                
            Rectangle()
                .frame(width: 380, height: 150)
                .cornerRadius(10)
            Text("Welcome to K-Player!")
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
