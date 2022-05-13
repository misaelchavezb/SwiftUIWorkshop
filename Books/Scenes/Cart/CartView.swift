//
//  CartView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 12/05/22.
//

import SwiftUI

struct CartView: View {
    let cart: Cart
    @Binding var showModal: Bool

    var body: some View {
        ScrollView {
            HStack {
                Button {
                    self.showModal = false
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .frame(width: 44, height: 44)
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                }
                .padding()
                Spacer()
            }
            Text("Your bag")
                .bold()
                .font(.title3)
            Text("\(cart.totalItems) items")
                .font(.subheadline)
                .foregroundColor(.secondary)
            ForEach(cart.items) { book in
                CartRowView(book: book)
                    .padding()
            }
            CartSummaryView(total: "$ \(cart.totalPrice.formattedPrice)")
            AppButtonView(text: "Checkout",
                          backgroundColor: .yellow)
                .onTapGesture {
                    print("Checkout")
                }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cart: Cart(), showModal: .constant(true))
    }
}
