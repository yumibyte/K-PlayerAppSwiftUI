//
//  PlaylistDetails.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 2/12/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct PlaylistDetails: View {
    
    let songs: [Song]
    
    var body: some View {

        Text("hi")
    }
}

struct PlaylistDetails_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistDetails(songs: songData)
    }
}
