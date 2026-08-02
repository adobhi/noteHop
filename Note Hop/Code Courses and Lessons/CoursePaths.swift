//  CoursePaths.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/13/26.
//

import SwiftUI
import Combine
import Foundation
//import FirebaseFirestore
//import FirebaseAuth

struct Courses: View {
    
    let course:
    
    UserCourse
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
                        Text(course.courseTitle)
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
                        await db.enrollInCourse(
                            courseId: course.id ?? "",
                            title: course.courseTitle,
                            range: course.range,
                            icon: course.icon)
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
        UserCourse(id: "1", courseTitle: "Violin", icon: "violin", range: "Treble", color: "heavyAqua"),
        UserCourse(id: "2", courseTitle: "Piano", icon: "piano", range: "Piano", color: "heavyYellow"),
        UserCourse(id: "3", courseTitle: "Flute", icon: "flute", range: "Treble", color: "heavyPink"),
        UserCourse(id: "4", courseTitle: "Alto Saxophone", icon: "sax", range: "Treble", color: "heavyAqua"),
        UserCourse(id: "5", courseTitle: "Trumpet", icon: "trumpet", range: "Treble", color: "heavyYellow"),
        UserCourse(id: "6", courseTitle: "Clarinet", icon: "clarinet", range: "Treble", color: "heavyPink"),
        UserCourse(id: "7", courseTitle: "Cello", icon: "cello", range: "Bass", color: "heavyAqua"),
        UserCourse(id: "8", courseTitle: "More Coming Soon", icon: "music.quarternote", range: "Treble", color: "heavyYellow")
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

struct SavedCourses: View {
    @ObservedObject var db: DatabaseManager
    var body: some View {
        VStack(alignment: .leading) {
            if db.savedCourses.isEmpty {
                VStack {
                    Image(systemName: "music.note")
                        .font(.system(size:40))
                    Text("No Courses Saved")
                        .cuteFont(25)
                        //.foregroundColor(.secondary)
                        .padding(.bottom,5)
                    Text("Go to the courses tab to add some new courses!")
                        .cuteFont(20)
                        .multilineTextAlignment(.center)
                        //.foregroundColor(.secondary)

                }
                .padding(.leading, 20)
                .padding(.vertical, 20)
            } else {
                NavigationStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack() {
                            ForEach(db.savedCourses) { course in
                                HStack {
                                    NavigationLink {
                                        if course.range == "Piano" {
                                            Piano()
                                            
                                        } else if course.range == "Treble" {
                                            TrebleInstruments(title: course.courseTitle,instrumentImage: course.icon)
                                        }
                                        else {
                                            BassInstruments(title: course.courseTitle,instrumentImage: course.icon)
                                        }
                                    } label: {
                                        Text(course.courseTitle)
                                            .cuteFont(25)
                                            .pinkButton()
                                    }
                                }
                                .padding(4)
                                .padding(.trailing, 2)
                                .cornerRadius(12)
                            }
                            .padding(.leading, 12)
                        }
                    }
                }
            }
        }
        .task {
            await db.fetchUserCourses()
        }
    }
}


#Preview {
    //InstrumentDashboardView()
    SavedCourses(db: DatabaseManager())
}
