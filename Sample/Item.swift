//
//  Item.swift
//  Sample
//
//  Created by Ian Dundas on 11/08/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    @Relationship(deleteRule: .cascade, inverse: \SubItem.item) public var subitems: [SubItem]

    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

@Model
final class SubItem {
    var timestamp: Date
    var item: Item

    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
