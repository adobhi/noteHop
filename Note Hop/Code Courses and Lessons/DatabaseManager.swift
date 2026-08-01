//
//  DatabaseManager.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/28/26.
//

import SwiftUI
import Combine
import Foundation
import FirebaseFirestore
import FirebaseAuth

// Custom data models for your instruments
struct UserCourse: Codable, Identifiable {
    @DocumentID var id: String?
    var courseTitle: String
    var enrolledAt: Date
}

@MainActor
class DatabaseManager: ObservableObject {
    private let db = Firestore.firestore()
    
    private var currentUserId: String? {
        return Auth.auth().currentUser?.uid
    }
    
    // The missing function your instrument squares are looking for
    func enrollInCourse(courseId: UUID, title: String) async {
        guard let uid = currentUserId else {
            print("No logged in user found!")
            return
        }
        
        let courseData = UserCourse(courseTitle: title, enrolledAt: Date())
        
        do {
            try db.collection("users")
                .document(uid)
                .collection("courses")
                .document(courseId.uuidString)
                .setData(from: courseData)
            print("Successfully saved \(title) to Firebase!")
        } catch {
            print("Error saving to Firebase: \(error)")
        }
    }
    
    //Fetches all courses saved by user!
    @Published var savedCourses: [UserCourse] = []
    
    func fetchUserCourses () async {
        guard let uid = currentUserId else {
            return
        }
        do {
            let snapshot = try await db.collection("users")
                .document(uid)
                .collection("courses")
                .getDocuments()
            self.savedCourses = snapshot.documents.compactMap { document in
                try? document.data(as: UserCourse.self)
            }
        } catch {
            print("Error fetching courses: \(error)")
        }
    }
    
    
}
