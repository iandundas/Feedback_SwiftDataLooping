//
//  ContentView.swift
//  Sample
//
//  Created by Ian Dundas on 11/08/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        VStack {
            if items.isEmpty {
                Button("Add an item to start excess logging") {
                    addItem()
                }
            }
            List {
                ForEach(items) { item in
                    Text("\(item.timestamp) has subitems: \(item.subitems.count)")
                }
            }
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)

            let subItem = SubItem(timestamp: Date())
            subItem.item = newItem
            modelContext.insert(subItem)
        }
    }
}
