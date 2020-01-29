//
//  Song.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 1/7/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct Song: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var artist: String
    var cover: String
    var level: Int
    var category: Category
//    var video:
    
    enum Category: String, Codable, CaseIterable, Hashable {
        case inglesVideos = "Ingles Videos"
        case spanishVideos = "Spanish Videos"
    }
    
    
//    init(from decoder:Decoder) throws {
//        let values = try decoder.container(keyedBy: Category.self)
//        let inglesVideos = try values.decode([Int].self, forKey: .inglesVideos)
//        let spanishVideos = try values.decode(Int.self, forKey: .spanishVideos)
//    }
}
