//
//  AppButtonView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

struct AppButtonView: View {
    let text: String
    let backgroundColor: Color

    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(.white)
            .frame(minWidth: 200, minHeight: 40)
            .background(backgroundColor)
            .cornerRadius(20)
    }
}

struct AppButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AppButtonView(text: "Buy for $19.99", backgroundColor: .yellow)
    }
}
