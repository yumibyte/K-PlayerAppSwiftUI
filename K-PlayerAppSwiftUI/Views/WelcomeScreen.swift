//
//  ContentView.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 11/26/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct WelcomeScreen: View {
    
    //categories to be used as key for NavigationView
    var categories:[String:[Song]] {
        .init(
            grouping: songData,
            by: {$0.category.rawValue}
        )
    }
    
    
    var body: some View {
//        Text("Hi!")
        NavigationView {
            List(categories.keys.sorted(), id: \String.self) {key in
                PlaylistRow(categoryName: "\(key)".uppercased(), songs: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
                }
        .navigationBarTitle(Text("LP-Playlists"))
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
