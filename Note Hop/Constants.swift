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
    static let profile = "Profile"
    static let library = "Library"
    
    static let homeIcon = "house"
    static let streakIcon = "flame"
    static let shopIcon = "building"
    static let friendsIcon = "heart"
    static let profileIcon = "person"
    static let libraryIcon = "book"
    static var firstLesson = "Course 1 Next Lesson"
    static var secondLesson = "Course 2 Next Lesson"
    static let color1 = "20D5C6"
    static let color2 = "FFADFE"
    static let color3 = "FAFFAD"
    
    static let noteImageURL = "https://t3.ftcdn.net/jpg/05/85/10/62/360_F_585106274_GbJNWuJ9gnj93G19sRT4eK54ojKysO0t.jpg"
    static let sheetMusicImageURL1 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnXTJJ2JNIGfYwld9ET-ebuGM_uD-ZRiJW0iL-tR6mSA&s=10"
    static let sheetMusicImageURL2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO-jsaOyyX1-GTceGJHFx-1Gwzy66nhR6K5Feb_zbYkA&s=10"
    static let sheetMusicImageURL3 = "https://musescore.com/static/musescore/scoredata/g/9269211375d672b1dbaff1f592dd10ac942dbf0f/score_0.svg?no-cache=1753951781"
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
                    .stroke(Color("heavyColor"),lineWidth:5)
            }
        
    }
}

extension View {
    func sheetMusicButton(_ music: String) -> some View{
        Image(music)
            .resizable()
            .scaledToFill()
            //.padding(.horizontal, pad)
            .frame(width:100, height: 150)
            .clipped()
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("heavyColor"), lineWidth: 5)
                )
        } 
    }


extension Text {
    func cuteFont(_ num: Double) -> some View{
        self
            .font(.custom("DynaPuff-Regular", size: num))
            //.padding(.horizontal, pad)
    }
}

extension View {
    func statsButton(_ pic: String) -> some View{
        Image(pic)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding(10)
        .scaledToFit()
        .clipped()
            .frame(width:100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("heavyColor"), lineWidth: 5)
            )
    }
}


struct Library {
    static let myLibrary = [Song(filename: "golden_hour",
                          title: "Golden Hour",
                          composer: "JVKE",
                          instrument: "Piano",
                          lessonInfo: "Watch the E Major (four sharps...) key signature! "),
                     Song(filename: "can_you_hear_the_music",
                          title: "Can You Hear The Music",
                          composer: "Ludwig Goransson",
                          instrument: "Piano",
                          lessonInfo: "The metronome is your best friend with all the tempo changes! "),
                     Song(filename: "the_entertainer",
                          title: "The Entertainer",
                          composer: "Scott Joplin",
                          instrument: "Piano",
                          lessonInfo: "idk man figure it out"),
                     Song(filename: "babydoll",
                          title: "Babydoll",
                          composer: "Dominic Fike",
                          instrument: "Piano",
                          lessonInfo: "idk man figure it out"),
                     Song(filename: "fairytale",
                          title: "Fairytale",
                          composer: "Alexander Rybak",
                          instrument: "Violin",
                          lessonInfo: "idk man figure it out"),
                     Song(filename: "love_story",
                          title: "Love Story",
                          composer: "Indila",
                          instrument: "Piano",
                          lessonInfo: "idk man figure it out"),
                     Song(filename: "in_this_shirt",
                          title: "In This Shirt",
                          composer: "The Irrepressibles",
                          instrument: "Violin",
                          lessonInfo: "idk man figure it out")]
}
