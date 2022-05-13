//
//  Double+Extensions.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import Foundation

extension Double {
    var formattedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2

        let number = NSNumber(value: self)
        return formatter.string(from: number) ?? ""
    }
}
