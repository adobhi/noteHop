//
//  FunUserData.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/26/26.
//

import SwiftData
import SwiftUI

struct FunUserData: View {
    @Environment(\.modelContext) var modelContext
    @Query var students: [UserDraft] 
    
    var body: some View {
        NavigationStack {
            List(students) {student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Violet","xAden", "Ridoc", "Liam", "Mira"]
                    let lastNames = ["Sorrengail","Riorson","Gamlin", "Mairi"]
                    
                    let choseFirst = firstNames.randomElement()!
                    let choseLast = lastNames.randomElement()!
                    
                    let student = UserDraft(id: UUID(), name: "\(choseFirst) \(choseLast)",)
                    modelContext.insert(student)
                }
            }
        }
        
    }
}

#Preview {
    FunUserData()
}
