//
//  tag.swift
//  SwiftUIWWDC23SimpleNotes
//
//  Created by Richard Price on 05/07/2023.
//

import Foundation
import SwiftData

@Model
class Tag {
    @Attribute(.unique) var id: String
    var name: String
    
    @Relationship var notes: [Note]
    
    init(id: String, name: String, notes: [Note]) {
        self.id = id
        self.name = name
        self.notes = notes
    }
}
