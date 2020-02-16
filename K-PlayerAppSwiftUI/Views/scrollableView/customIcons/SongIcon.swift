//
//  SongIcon.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 2/12/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI



struct SongIcon: View {
    
    let song: Song
     
    var body: some View {
        Image(song.coverName)
            .frame(width: 200, height: 200)
//
        
    }
}

struct SongIcon_Previews: PreviewProvider {
    static var previews: some View {
        SongIcon(song: songData[0])
    }
}
