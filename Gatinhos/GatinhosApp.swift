//
//  GatinhosApp.swift
//  Gatinhos
//
//  Created by José Miguel Lapa on 17/08/2024.
//

import SwiftUI

@main
struct GatinhosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
