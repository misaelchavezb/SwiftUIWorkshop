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
    @State var jiggling = false
    @State var jiggling_counter = 0

    var scale_effect = 1.2
    let rotation_angle_base = 15
    @State private var rotation_angle = 0

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
            ForEach(Array(cart.items.keys.enumerated()), id:\.element) { _, book in
                CartRowView(book: book, count: cart.items[book]!)
            }
            CartSummaryView(total: "$ \(cart.totalPrice.formattedPrice)")
            AppButtonView(text: "Checkout",
                          backgroundColor: .yellow)
                .onTapGesture {
                    print("Checkout")
                }
                .rotationEffect(.degrees(jiggling ? Double(rotation_angle) : 0))
                .scaleEffect(jiggling ? scale_effect : 1)
                .animation(.linear(duration: 0.15), value: jiggling)
        }
        .padding()
        .onAppear() {
            jiggle_shipping_icon(apply_delay: true)
        }
    }

    func jiggle_shipping_icon(apply_delay: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + (apply_delay ? 1 : 0)) {
            withAnimation() {
                jiggling.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                withAnimation() {
                    jiggling.toggle()
                }
                jiggling_counter += 1

                if(jiggling_counter == 4){
                    jiggling_counter = 0
                    rotation_angle = -rotation_angle_base
                } else {
                    if(rotation_angle < 0){
                        rotation_angle = rotation_angle_base
                    } else {
                        rotation_angle = -rotation_angle_base
                    }
                    jiggle_shipping_icon(apply_delay: false)
                }
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cart: Cart(), showModal: .constant(false))
    }
}
