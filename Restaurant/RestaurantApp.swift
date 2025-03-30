//
//  RestaurantApp.swift
//  Restaurant
//
//  Created by William Bodily on 3/30/25.
//

import SwiftUI

@main
struct RestaurantApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
