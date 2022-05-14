//
//  Cart.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import Foundation

struct Cart {
    var items: [Book: Int] = [:]

    var totalItems: Int {
        items.count
    }

    var totalPrice: Double {
        return items.map { book, items in
            book.price * Double(items)
        }.reduce(0, +)
    }

    mutating func addBook(_ book: Book) {
        if items.contains(where: { $0.key == book }) {
            items[book]! += 1
        } else {
            items[book] = 1
        }
    }

    mutating func removeBook(_ book: Book) {
        if items.contains(where: { $0.key == book }) {
            if let newValue = items[book] {
                items[book] = newValue - 1
            }
        }
    }
}
