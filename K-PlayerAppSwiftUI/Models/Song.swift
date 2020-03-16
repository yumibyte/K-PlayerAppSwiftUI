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
    var artist: String
    var title: String
    var coverName: String
    var level: String
    var category: Category
    
//    var video:
    
    enum Category: String, Codable, CaseIterable, Hashable {
        case inglesVideos = "Ingles Videos"
        case spanishVideos = "Spanish Videos"
    }
    
}
