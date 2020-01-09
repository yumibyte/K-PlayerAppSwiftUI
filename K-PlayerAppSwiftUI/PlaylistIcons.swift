//
//  PlaylistIcons.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 12/27/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct PlaylistIcons: View {
    var body: some View {
        
        
        
        ZStack(alignment:.bottomLeading) {
            Rectangle()
                .frame(width: 200, height: 200)
                .cornerRadius(10)
                .foregroundColor(.gray)
            //fade
            Rectangle()
                .frame(width:150, height: 30)
                .opacity(0.20)
            .blur(radius: 10)
                .padding(8)
            
            HStack {
                VStack() {
                    Text("Spanish Playlist")
                        .foregroundColor(.white)
                        .font(.body)
                }
                .padding(.leading)
                .padding(.bottom)
            }
        
        }
       
    }
}

struct PlaylistIcons_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistIcons()
    }
}
