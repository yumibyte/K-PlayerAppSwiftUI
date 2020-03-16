//
//  PlaylistDetails.swift
//  
//
//  Created by Ashley Raigosa on 1/29/20.
//

import SwiftUI

struct SongDetail: View {
    let song: Song
    
    var body: some View {
        HStack() {
            Text("Shakira -- Sale el sol")
                .padding()
            Text("Duration")
            .padding()
            
            Image("Level_1")
            
//            Image(decorative: "level" + song.level as! CGImage, scale: CGFloat(10.0))
        }
        
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        SongDetail(song: songData[0])
        
    }
}
