//
//  SwiftUIWWDC23SimpleNotesApp.swift
//  SwiftUIWWDC23SimpleNotes
//
//  Created by Richard Price on 05/07/2023.
//

import SwiftUI
import SwiftData

@main
struct SwiftUIWWDC23SimpleNotesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [
                    Note.self,
                    Tag.self
                ])
        }
    }
}
