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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlaylistDetails_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetails(song: songData[0])
    }
}
