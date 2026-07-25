//
//  Constants.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/17/26.
//

import Foundation
import SwiftUI

struct Constants {
    
    static let trebleBank = Bank(title: "Reading the Treble Clef", banks: wrappedTrebleCDE, wrappedTrebleFGA, wrappedTrebleBC)
    static let wrappedTrebleCDE = bankWrapper(title: "Learn to Read: C, D, and E", bank: QuestionBanks.trebleQuestionsCDE)
    static let wrappedTrebleFGA = bankWrapper(title: "Learn to Read: F, G, A", bank: QuestionBanks.trebleQuestionsFGA)
    static let wrappedTrebleBC = bankWrapper(title: "Learn to Read: B and High C", bank: QuestionBanks.trebleQuestionsBC)
    
    static let bassBank = Bank(title: "Reading the Bass Clef", banks: wrappedBassCDE, wrappedBassFGA, wrappedBassBC)
    static let wrappedBassCDE = bankWrapper(title: "Learn to Read: C, D, and E", bank: QuestionBanks.bassQuestionsCDE)
    static let wrappedBassFGA = bankWrapper(title: "Learn to Read: F, G, A", bank: QuestionBanks.bassQuestionsFGA)
    static let wrappedBassBC = bankWrapper(title: "Learn to Read: B and High C", bank: QuestionBanks.bassQuestionsBC)
    
    
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
    
    
    static let goldenHour = Song(filename: "golden_hour",
                          title: "Golden Hour",
                          composer: "JVKE",
                          instrument: "Piano",
                          lessonInfo: "Watch the E Major (four sharps...) key signature! ")
    static let canYouHear = Song(filename: "can_you_hear_the_music",
                                 title: "Can You Hear The Music",
                                 composer: "Ludwig Goransson",
                                 instrument: "Piano",
                                 lessonInfo: "The metronome is your best friend with all the tempo changes! ")
    static let theEntertainer = Song(filename: "the_entertainer",
                                     title: "The Entertainer",
                                     composer: "Scott Joplin",
                                     instrument: "Piano",
                                     lessonInfo: "idk man figure it out")
    static let babydoll = Song(filename: "babydoll",
                               title: "Babydoll",
                               composer: "Dominic Fike",
                               instrument: "Piano",
                               lessonInfo: "idk man figure it out")
    static let fairytale = Song(filename: "fairytale",
                                title: "Fairytale",
                                composer: "Alexander Rybak",
                                instrument: "Violin",
                                lessonInfo: "idk man figure it out")
    static let loveStory = Song(filename: "love_story",
                                title: "Love Story",
                                composer: "Indila",
                                instrument: "Piano",
                                lessonInfo: "idk man figure it out")
    static let inThisShirt = Song(filename: "in_this_shirt",
                                  title: "In This Shirt",
                                  composer: "The Irrepressibles",
                                  instrument: "Violin",
                                  lessonInfo: "idk man figure it out")
    
    /* static let trebleQuestionsCDE: [Question] = [
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c4", options: ["C", "D", "E", "A"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c4", options: ["D", "F", "C", "B"], correctOptionIndex: 2),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c4", options: ["A", "C", "G", "E"], correctOptionIndex: 1),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c4", options: ["C", "B", "D", "G"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_d4", options: ["C", "D", "B", "G"], correctOptionIndex: 1),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_d4", options: ["D", "A", "F", "E"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_d4", options: ["B", "G", "C", "D"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_e4", options: ["F", "D", "G", "E"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_e4", options: ["E", "C", "B", "D"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_e4", options: ["C", "G", "E", "A"], correctOptionIndex: 2),
        
        
        /*(Question(title: "Identify the note on the treble clef staff.", imageName: "treble_g4", options: ["E", "G", "B", "F"], correctOptionIndex: 1),
        Question(title: "Identify the note on the bass clef staff.", imageName: "bass_e3", options: ["C", "G", "E", "D"], correctOptionIndex: 2),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c4", options: ["Middle C", "D", "E", "A"], correctOptionIndex: 0),
        Question(title: "Identify the note on the bass clef staff.", imageName: "bass_f3", options: ["B", "D", "G", "F"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c5", options: ["E", "C", "F", "G"], correctOptionIndex: 1)*/
    ] */

    
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


struct QuizSection: Identifiable {
    let id = UUID()
    let questions: [Question]
}


struct Library {
    
    static let myLibrary: [Song] = [
        Song(filename: "golden_hour",
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
             lessonInfo: "idk man figure it out")
    ]
}
