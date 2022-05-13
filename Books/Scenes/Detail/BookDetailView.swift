//
//  BookDetailView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    @Binding var cart: Cart

    @State var showAlert = false
    @State var showModal = false

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Image(book.imageName)
                    .customResizedImage(width: nil, height: 200)
                Text(book.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(book.title)
                    .font(.title3)
                    .bold()
                Text(book.synopsis)
                    .foregroundColor(.secondary)
                    .lineLimit(4)
                HStack {
                    ForEach(book.tags) { tag in
                        TagView(text: tag.title)
                    }
                }
                Divider()
                AppButtonView(text: "Buy for $\(book.price.formattedPrice)",
                              backgroundColor: .black)
                    .onTapGesture {
                        showAlert = true
                        cart.addBook(book)
                    }
            }
            .padding()
            .navigationBarItems(trailing: CartButtonView(items: cart.totalItems).onTapGesture {
                self.showModal = true
            })
            .alert("Book added to cart", isPresented: $showAlert) {
                Button("Done") {
                    self.showAlert = false
                }
            }
            .sheet(isPresented: $showModal) {
                CartView(cart: cart, showModal: $showModal)
            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book.mockedData[0], cart: .constant(Cart()))
    }
}
