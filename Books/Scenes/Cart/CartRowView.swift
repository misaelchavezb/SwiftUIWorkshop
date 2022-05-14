//
//  CartRowView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

struct CartRowView: View {
    let book: Book
    let count: Int

    var body: some View {
        HStack {
            Image(book.imageName)
                .customResizedImage(width: nil, height: 80)
                .padding(.trailing, 10)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.body)
                Text("$ \(book.price.formattedPrice)")
                    .font(.title2)

            }
            Spacer()
            TagView(text: "x\(count)")
        }
    }
}

struct CartRowView_Previews: PreviewProvider {
    static var previews: some View {
        CartRowView(book: Book.mockedData[0], count: 1)
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
