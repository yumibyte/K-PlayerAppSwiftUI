//
//  HeaderDetail.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 1/5/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import SwiftUI

struct HeaderDetail: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 365, height: 225)
                .foregroundColor(.blue)
                .cornerRadius(10)
            Text("Welcome To K-Player!")
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
    }
}

struct HeaderDetail_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetail()
    }
}
