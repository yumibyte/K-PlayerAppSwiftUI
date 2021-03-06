//
//  ContentView.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 11/26/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct FullPlaylistScreen: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    //categories to be used as key for NavigationView
    var categories:[String:[Song]] {
        .init(
            grouping: songData,
            by: {$0.category.rawValue}
        )
    }
    
    
    var body: some View {
          
        List(categories.keys.sorted(), id: \String.self) {key in
            PlaylistRow(categoryName: "\(key)".uppercased(), songs: self.categories[key]!)
                .frame(height: 375)
                .padding(.bottom)
        }
        .navigationBarTitle(Text("LP-Playlists"))
        .navigationBarBackButtonHidden(true)
    }
    
    
        
    
}

struct FullPlaylistScreen_Previews: PreviewProvider {
    static var previews: some View {
        FullPlaylistScreen()
    }
}
