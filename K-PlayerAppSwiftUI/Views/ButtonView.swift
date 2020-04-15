//
//  ButtonView.swift
//  
//
//  Created by Ashley Raigosa on 4/12/20.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Text("Register")
            .underline()
            .frame(width: 200, height: 100, alignment: .center)
            .foregroundColor(.gray)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
