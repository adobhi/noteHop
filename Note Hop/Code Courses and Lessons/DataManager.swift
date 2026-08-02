import Combine
import SwiftUI
import Firebase
import FirebaseFirestore
/*
struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView {
            // FIXED: courseTitle instead of name
            List(dataManager.courses) { course in
                Text(course.courseTitle)
            }
            .navigationTitle("Instrument Courses")
            .navigationBarItems(trailing: Button(action: {
                // Add action here
            }) {
                Image("violin")
            })
        }
    }
}

class DataManager: ObservableObject {
    @Published var courses: [UserCourse] = []
    
    init() {
        fetchCourses()
    }
    
    func fetchCourses() {
        courses.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("courses")
        
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    // Modern Firestore approach: decode directly into UserCourse!
                    if let course = try? document.data(as: UserCourse.self) {
                        DispatchQueue.main.async {
                            self.courses.append(course)
                        }
                    } else {
                        // Manual fallback if decoding manually
                        let data = document.data()
                        let title = data["courseTitle"] as? String ?? data["name"] as? String ?? ""
                        let icon = data["icon"] as? String ?? ""
                        let range = data["range"] as? String ?? ""
                        
                        let course = UserCourse(
                            id: document.documentID,
                            courseTitle: courseTitle,
                            icon: icon,
                            range: range,
                            enrolledAt: Date()
                        )
                        
                        DispatchQueue.main.async {
                            self.courses.append(course)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ListView()
        .environmentObject(DataManager()) // FIXED: Added environment object for Preview
}
*/
