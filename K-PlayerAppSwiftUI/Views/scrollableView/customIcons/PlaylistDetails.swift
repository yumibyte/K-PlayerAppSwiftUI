//
//  PlaylistDetails.swift
//  
//
//  Created by Ashley Raigosa on 1/29/20.
//

import SwiftUI

struct PlaylistDetails: View {
    let song: Song
    
    var body: some View {
        //TODO: find a way to make a relational database"
//        List() { song in
//            Image(song.level)
//            Text(song.title)
        HStack() {
            Text("Shakira -- Sale el sol")
                .padding()
            Text("Duration")
            .padding()

            Image("Level_1")
//
        }
        
    }
}

struct PlaylistDetaiils_Previews: PreviewProvider {
    static var previews: some View {
        
        PlaylistDetails(song: songData[0])
        
    }
}
