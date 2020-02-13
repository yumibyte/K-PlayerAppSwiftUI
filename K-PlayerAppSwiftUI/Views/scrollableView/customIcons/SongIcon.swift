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
    let title: String
    
    var body: some View {
        Text(song.title)
    }
}

struct SongIcon_Previews: PreviewProvider {
    static var previews: some View {
        SongIcon(song: songData[0], title: "Hips Don't Lie")
    }
}
