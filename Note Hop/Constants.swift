//
//  Constants.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/17/26.
//

import Foundation
import SwiftUI

struct Constants {
    static let home = "Home"
    static let streak = "Streak"
    static let shop = "Shop"
    static let friends = "Friends"
    static let profile = "profile"
    
    static let homeIcon = "house"
    static let streakIcon = "flame"
    static let shopIcon = "building"
    static let friendsIcon = "heart"
    static let profileIcon = "person"
    static var firstLesson = "Course 1 Next Lesson"
    static var secondLesson = "Course 2 Next Lesson"
    static let color1 = "20D5C6"
    static let color2 = "FFADFE"
    static let color3 = "FAFFAD"
}

extension Text {
    func pinkButton() -> some View{
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(Color("textColor"))
            .bold()
            .background{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color("buttonColor"),lineWidth:5)
            }
    }
}
