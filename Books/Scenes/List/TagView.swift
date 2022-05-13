//
//  TagView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

struct TagView: View {
    let text: String

    var body: some View {
        Text(text)
            .bold()
            .padding(.horizontal, 15)
            .padding(.vertical, 5)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 1)
            )
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(text: "Tag")
    }
}
