//
//  InfoView.swift
//  DavidBusinessCard
//
//  Created by David Santiago on 29/7/22.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    .foregroundColor(Color("TextInfoColor"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+34 696 72 19 16", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
