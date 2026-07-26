//
//  UserDraft.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/26/26.
//

import Foundation
import SwiftData

@Model
class UserDraft {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
