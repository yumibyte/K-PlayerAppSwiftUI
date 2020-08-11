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
        
        Form {
            Section {
        Text(song.title)
            }
        }.navigationBarTitle(Text(song.artist))
        
        
        //            Text("Shakira -- Sale el sol")
        //                .padding()
        //            Text("Duration")
        //            .padding()
        //
        //            Image("Level_1")
                
        
    }
        
    
}
struct PlaylistDetaiils_Previews: PreviewProvider {
    static var previews: some View {
        
        PlaylistDetails(song: songData[0])
        
    }
}
