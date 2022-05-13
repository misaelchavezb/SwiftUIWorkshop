//
//  BookRowView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

struct BookRowView: View {
    let book: Book

    var body: some View {
        HStack {
            Image(book.imageName)
                .customResizedImage(width: nil, height: 80)
                .padding(.trailing, 10)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.body)
                Text(book.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
                Text("$ \(book.price.formattedPrice)")
                    .font(.title2)
            }
            Spacer()
        }
    }
}

struct BookRowView_Previews: PreviewProvider {
    static var previews: some View {
        BookRowView(book: Book.mockedData[0])
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
