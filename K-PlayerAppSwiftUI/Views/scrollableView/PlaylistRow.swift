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
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    ForEach(self.songs, id: \.title) { song in
                        NavigationLink(destination: PlaylistDetails(song: song)) {
                            PlaylistIcons(song: self.songs.first!)
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
