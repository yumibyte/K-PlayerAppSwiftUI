//
//  PlaylistDetails.swift
//  
//
//  Created by Ashley Raigosa on 1/29/20.
//

import SwiftUI

struct PlaylistDetails: View {
    var song: Song
    
    var body: some View {
        Text(song.title)
    }
}

struct PlaylistDetails_Previews: PreviewProvider {
    static var previews: some View {
        
        PlaylistDetails(song: songData[0])
        
    }
}
