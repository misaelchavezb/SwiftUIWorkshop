//
//  Tag.swift
//  Books
//
//  Created by Misael Chavez Bautista on 13/05/22.
//

import Foundation

struct Tag {
    let id = UUID()
    let title: String
}

extension Tag: Identifiable {}
