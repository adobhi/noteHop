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
    
    static let noteImageURL = "https://t3.ftcdn.net/jpg/05/85/10/62/360_F_585106274_GbJNWuJ9gnj93G19sRT4eK54ojKysO0t.jpg"
    static let sheetMusicImageURL1 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnXTJJ2JNIGfYwld9ET-ebuGM_uD-ZRiJW0iL-tR6mSA&s=10"
    static let sheetMusicImageURL2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO-jsaOyyX1-GTceGJHFx-1Gwzy66nhR6K5Feb_zbYkA&s=10"
    static let music1 = "Can You Hear the Music"
    static let music2 = "Despacito"
    static let music3 = "Golden Hour"
}

extension View {
    func pinkButton() -> some View{
        self
            .frame(width: 150, height: 100)
            .foregroundStyle(Color("textColor"))
            //.bold()
            .background{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color("buttonColor"),lineWidth:5)
            }
    }
}

extension View {
    func sheetMusicButton(_ music: String) -> some View{
        AsyncImage(url: URL(string: music)) { image in
            image
            //.resizable()
                .scaledToFill()
                //.padding(.horizontal, pad)
            //.clipped()
                .frame(width:100, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("buttonColor"), lineWidth: 5)
                )
        } placeholder: {
            ProgressView()
        }
    }
}

extension Text {
    func cuteFont(_ num: Double) -> some View{
        self
            .font(.custom("DynaPuff-Regular", size: num))
            //.padding(.horizontal, pad)
    }
}
