//
//  Cart.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import Foundation

struct Cart {
    var items: [Book] = []

    var totalItems: Int {
        items.count
    }

    var totalPrice: Double {
        items.reduce(0) { partialResult, book in
            partialResult + book.price
        }
    }

    mutating func addBook(_ book: Book) {
        items.append(book)
    }

    mutating func removeBook(_ book: Book) {
        items.removeAll { $0 == book }
    }
}
