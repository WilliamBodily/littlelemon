//
//  Home.swift
//  LittleLemon
//
//  Created by William Bodily on 3/31/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        let persistence = PersistenceController.shared

        TabView {
            Menu()
                .tabItem({
                    Label("Menu", systemImage: "list.dash")
                })
                .environment(\.managedObjectContext, persistence.container.viewContext)
            UserProfile()
                .tabItem({
                    Label("Profile", systemImage: "square.and.pencil")
                })
                .environment(\.managedObjectContext, persistence.container.viewContext)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Home()
}
