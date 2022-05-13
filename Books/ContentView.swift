//
//  ContentView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    @State private var cart = Cart()
    @State private var animate = false

    private var books: [Book] = Book.mockedData


    var body: some View {
        NavigationView {
            List(books) { book in
                NavigationLink(destination:
                                BookDetailView(book: book,
                                               cart: $cart)) {
                    BookRowView(book: book)
                        .padding()
                }
            }
            .navigationTitle("Book List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
