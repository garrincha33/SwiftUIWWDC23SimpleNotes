//
//  TagListView.swift
//  SwiftUIWWDC23SimpleNotes
//
//  Created by Richard Price on 06/07/2023.
//

import SwiftData
import SwiftUI

struct TagListView: View {
    
    @Environment(\.modelContext) private var context
    @Query(sort: \.name, order: .forward) var allTags: [Tag]
    @State var tagText = ""
    
    
    var body: some View {
        List {
            Section {
                DisclosureGroup("Create A Tag") {
                    TextField("Enter text",text: $tagText, axis: .vertical)
                        .lineLimit(2...4)
                    
                    Button("Save") {
                        createTag()
                    }
                }
            }
            
            Section {
                if allTags.isEmpty {
                    ContentUnavailableView("You dont have any tags yet", systemImage: "tag")
                } else {
                    ForEach(allTags) { tag in
                        VStack(alignment: .leading) {
                            Text(tag.name)
                        }
                    }
                    .onDelete { indexSet in
                        indexSet.forEach { index in
                            context.delete(allTags[index])}
                        try? context.save()
                    }
                }
            }
        }
    }
    
    func createTag() {
        let tag = Tag(id: UUID().uuidString, name: tagText, notes: [])
        context.insert(tag)
        try? context.save()
        tagText = ""
    }
}

#Preview {
    TagListView()
}
