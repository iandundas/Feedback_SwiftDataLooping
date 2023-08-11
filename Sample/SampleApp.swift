//
//  SampleApp.swift
//  Sample
//
//  Created by Ian Dundas on 11/08/2023.
//

import SwiftUI
import SwiftData

@main
struct SampleApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Item.self, SubItem.self])
    }
}
