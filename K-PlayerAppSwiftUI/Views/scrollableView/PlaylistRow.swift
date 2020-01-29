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
                    ForEach(self.songs, id: self.title) { song in
                        NavigationLink(destination: PlaylistIcons(song: song))
                            
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
