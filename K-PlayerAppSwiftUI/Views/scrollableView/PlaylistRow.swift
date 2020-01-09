//
//  PlaylistRow.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 1/6/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct PlaylistRow: View {
    var body: some View {
        VStack() {
            
            Text("LPs Playlists")
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                PlaylistIcons()
                PlaylistIcons()
            }
            
        }
    }
}

struct PlaylistRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistRow()
    }
}
