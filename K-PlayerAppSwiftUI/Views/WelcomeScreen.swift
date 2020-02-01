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
        
        //Welcome to K-Player!
        
//        VStack {
//            HeaderDetail()
//                .offset(y: -280)
//            Divider()
//
//        }
        NavigationView {
            List(categories.keys.sorted(), id: \String.self) {key in
                PlaylistRow(categoryName: "\(key) Drinks".uppercased(), songs: self.categories[key]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
                }
        .navigationBarTitle(Text("COFFEE DB"))
        }
        
        
    
        
        
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
