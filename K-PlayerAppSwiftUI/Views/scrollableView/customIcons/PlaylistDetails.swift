//
//  PlaylistDetails.swift
//
//
//  Created by Ashley Raigosa on 1/29/20.
//

import SwiftUI
import UIKit

struct PlaylistDetails: View {
    let song: Song
    
    @State var url = URL(string: "https://sites.google.com/site/ashleyraigosa/")
    @State var isPresented = true
    var body: some View {
        NavigationView() {
            
            Text("hello")
        }.sheet(isPresented: $isPresented) {
            CustomSafariViewController.SafariView(url: self.$url)

        }

//        Form {
//            Section {
//        Text(song.title)
        
//            }
//        }.navigationBarTitle(Text(song.artist))
        
        
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
