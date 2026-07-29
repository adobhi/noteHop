//
//  DataManager.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/28/26.
//

import Combine
import SwiftUI
import Firebase

struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView{
            List(dataManager.courses, id: \.id) { course in
                Text(course.name)
            }
            .navigationTitle("Instrument Courses")
            .navigationBarItems(trailing: Button() {
                //add
            } label: {
                Image("violin")
            }
        )
    }
    }
}


class DataManager: ObservableObject {
    @Published var courses: [InstrumentCourse] = []
    
    
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
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let icon = data["icon"] as? String ?? ""
                    let color = data["color"] as? String ?? ""
                    
                    let course = InstrumentCourse(name: name, icon: icon, color: color)
                    self.courses.append(course)
                }
            }
            
            
        }
        
    }
}

#Preview {
    ListView()
}
