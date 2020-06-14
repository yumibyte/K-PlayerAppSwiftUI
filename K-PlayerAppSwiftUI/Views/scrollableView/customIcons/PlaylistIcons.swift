//
//  PlaylistIcons.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 12/27/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct PlaylistIcons: View {
    
    var song: Song

    var body: some View {
        VStack(spacing: 16.0) {
            ZStack(alignment:.bottomLeading) {
                Image(song.coverName)
                .scaleEffect(0.4)
                .frame(width: 250, height: 250)
                .cornerRadius(10)

                //fade
                Rectangle()
                    .frame(width: 200, height: 50)
                    .opacity(0.20)
                    .blur(radius: 10)
                    .padding(8)
                    .offset(y: 1)
                
                HStack {
                    VStack() {
                        Text(song.title)
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                }
                
            }
        }
        
       
    }
}

struct PlaylistIcons_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistIcons(song: songData[0])
    }
}
