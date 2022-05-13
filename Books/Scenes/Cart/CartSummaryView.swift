//
//  CartSummaryView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

struct CartSummaryView: View {
    let total: String
    var body: some View {
        HStack {
            Spacer()
            Image("freeShipping")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .padding()
                .background(Color.gray)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 10) {
                Text("Total:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(total)
                    .font(.title)
                    .bold()
            }
        }
    }
}

struct CartSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        CartSummaryView(total: "$29.84")
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
