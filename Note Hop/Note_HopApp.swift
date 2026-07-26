//
//  Note_HopApp.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/7/26.
//

import FirebaseCore
import SwiftData
import SwiftUI

@main
struct Note_HopApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: UserDraft.self)
    }
}
