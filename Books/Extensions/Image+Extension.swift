//
//  Image+Extension.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

extension Image {
    func customResizedImage(width: CGFloat?, height: CGFloat?) -> some View {
        self.resizable()
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 0, y: 5)
            .scaledToFit()
            .frame(width: width, height: height)
    }
}
