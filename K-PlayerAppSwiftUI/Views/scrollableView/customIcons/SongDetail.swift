//
//  PlaylistDetails.swift
//  
//
//  Created by Ashley Raigosa on 1/29/20.
//

import SwiftUI

struct SongDetail: View {
    var song: Song
    
    var body: some View {
        HStack() {
            Text("Shakira -- Sale el sol")
                .padding()
            Text("Duration")
            .padding()

            Text("Level")
            .padding()

        }
        
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        SongDetail(song: songData[0])
        
    }
}
