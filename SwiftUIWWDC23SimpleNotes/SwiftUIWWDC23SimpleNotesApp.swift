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
            TabView {
                noteList
                tagList
            }
                .modelContainer(for: [
                    Note.self,
                    Tag.self
                ])
        }
    }
    
    var noteList: some View {
        NavigationStack {
            NoteListView()
                .navigationTitle("Notes")
        }
        .tabItem { Label("Notes", systemImage: "note") }
        
    }
    var tagList: some View {
        NavigationStack {
            TagListView()
                .navigationTitle("Tags")
        }
        .tabItem { Label("Tags", systemImage: "tag") }
    }
}
