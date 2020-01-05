//
//  PlaylistIcons.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 12/27/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import SwiftUI
import Firebase

struct PlaylistIcons: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 365, height: 225)
                .foregroundColor(.blue)
                .cornerRadius(10)
            Text("Welcome To K-Player!")
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
    }
}

struct PlaylistIcons_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistIcons()
    }
}
