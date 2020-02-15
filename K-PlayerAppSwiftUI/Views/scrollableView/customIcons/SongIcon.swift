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
    
    
    let cover = UIImage(named: coverName)
    let imageView = UIImageView(image: cover!)
    
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 200)
        
        
    }
}

struct SongIcon_Previews: PreviewProvider {
    static var previews: some View {
        SongIcon(song: songData[0])
    }
}
