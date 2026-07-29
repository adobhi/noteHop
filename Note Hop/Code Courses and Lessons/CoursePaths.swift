//  CoursePaths.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/13/26.
//

import SwiftUI
import Combine
import Foundation
import FirebaseFirestore
import FirebaseAuth

struct Courses: View {
    
    let course:
    
    InstrumentCourse
    @ObservedObject var db: DatabaseManager
    @State private var isEnrolled = false
    
    var body: some View {
        ScrollView{
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(course.color))
                        .frame(width: 150, height: 150)
                        .padding(15)
                    VStack {
                        Text(course.name)
                            .foregroundStyle(.black)
                            .cuteFont(25)
                        Image(course.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 80)
                    }
                }
                
                Spacer()
                
                // Add Course Action Button
                Button(action: {
                    Task {
                        await db.enrollInCourse(courseId: course.id, title: course.name)
                        withAnimation {
                            isEnrolled = true
                        }
                    }
                }) {
                    HStack {
                        Image(systemName: isEnrolled ? "checkmark.circle.fill" : "plus.circle.fill")
                        Text(isEnrolled ? "Added" : "Add Course")
                    }
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    .frame(width: 150)
                    .background(isEnrolled ? Color("lightAqua") : Color("lightColor"))
                    .cornerRadius(8)
                }
                
                .disabled(isEnrolled) // Prevents duplicate additions
            }
            
            .padding()
            .frame(height: 220)
            //.background(Color(.systemBackground))
            .cornerRadius(12)
            //.shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        }
    }
}



struct InstrumentDashboardView: View {
    @StateObject private var db = DatabaseManager()
    
    // Sample static catalog of instrument courses available to learn
    let availableCourses = [
        InstrumentCourse(name: "Violin", icon: "violin", color: "heavyAqua"),
        InstrumentCourse(name: "Piano", icon: "piano", color: "heavyYellow"),
        InstrumentCourse(name: "Flute", icon: "flute", color: "heavyPink"),
        InstrumentCourse(name: "Alto Saxophone", icon: "sax", color: "heavyAqua"),
        InstrumentCourse(name: "Trumpet", icon: "trumpet", color: "heavyYellow"),
        InstrumentCourse(name: "Clarinet", icon: "clarinet", color: "heavyPink"),
        InstrumentCourse(name: "Cello", icon: "cello", color: "heavyAqua"),
        InstrumentCourse(name: "More Coming Soon", icon: "music.quarternote", color: "heavyYellow")
    ]
    
    // Defines a two-column responsive grid layout
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(availableCourses) { course in
                        Courses(course: course, db: db)
                    }
                }
                .padding()
            }
            .navigationTitle("Learn Instruments")
            .background(Color(.systemGroupedBackground))
        }
        .safeAreaInset(edge: .top, spacing: 0) {
            Text("Course Paths")
                .cuteFont(50)
                .foregroundStyle(Color("bannerFont"))
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("lightColor")
                    .ignoresSafeArea(edges: .top))

        }
    }
}


#Preview {
    InstrumentDashboardView()
}
