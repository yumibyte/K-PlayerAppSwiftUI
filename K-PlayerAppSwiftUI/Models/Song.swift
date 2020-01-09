//
//  Song.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 1/7/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct Song: Hashable, Identifiable {
    var id: Int
    var title: String
    var artist: String
    var cover: UIImage
    var level: Int
    var category: Category
//    var video:
    
    enum Category: String {
        case inglesVideos = "Ingles Videos"
        case spanishVideos = "Spanish Videos"
    }
}
