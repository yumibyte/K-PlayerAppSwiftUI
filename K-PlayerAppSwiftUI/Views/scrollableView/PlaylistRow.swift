//
//  PlaylistRow.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 1/6/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct PlaylistRow: View {
    
    let categoryName: String
    let songs: [Song]
    
    var body: some View {
        VStack() {
            
            Text("LPs Playlists")
                self.font(.headline)
            
            VStack {
                HeaderDetail()
                    .offset(y: -280)
                Divider()

            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    ForEach (self.songs, id: \.title) { songs in

                        NavigationLink(destination: PlaylistDetails(song: songs)) {
                            PlaylistIcons(song: self.songs.first!)
                                                           .frame(width: 300)
                                                           .position(x: 170, y: 130)
                                                           .padding(.trailing, 30)
                        }

                    }
                }
            }
            
        }
    }
}

struct PlaylistRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistRow(categoryName: "Ingles Videos", songs: songData)
    }
}
