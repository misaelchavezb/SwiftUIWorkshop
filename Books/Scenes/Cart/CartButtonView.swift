//
//  CartButtonView.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import SwiftUI

struct CartButtonView: View {
    let items: Int

    var body: some View {
        HStack {
            Text("\(items)")
                .bold()
                .font(.caption)
            Image(systemName: "cart")
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(items: 1)
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: 50))
    }
}
