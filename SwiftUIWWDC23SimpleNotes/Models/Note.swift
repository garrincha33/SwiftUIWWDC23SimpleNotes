//
//  Note.swift
//  SwiftUIWWDC23SimpleNotes
//
//  Created by Richard Price on 05/07/2023.
//

import Foundation
import SwiftData

@Model
class Note {
    @Attribute(.unique) var id: String
    var content: String
    var createdAt: Date
    
    @Relationship(inverse: \Tag.notes) var tags: [Tag]
    
    init(id: String, content: String, createdAt: Date) {
        self.id = id
        self.content = content
        self.createdAt = createdAt
    }
}
