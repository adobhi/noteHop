//
//  QuestionBanks.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/20/26.
//

import SwiftUI

struct QuestionBanks: View {
    
    static let trebleQuestionsCDE: [Question] = [
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
        ]
    
    static let trebleQuestionsFGA: [Question] = [
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_f4", options: ["C", "G", "F", "A"], correctOptionIndex: 2),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_f4", options: ["F", "B", "D", "G"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_f4", options: ["A", "F", "G", "E"], correctOptionIndex: 1),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_f4", options: ["B", "D", "E", "F"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_g4", options: ["A", "D", "B", "G"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_g4", options: ["E", "G", "B", "F"], correctOptionIndex: 1),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_g4", options: ["B", "F", "C", "G"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_a4", options: ["F", "B", "A", "E"], correctOptionIndex: 2),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_a4", options: ["F", "A", "B", "C"], correctOptionIndex: 1),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_a4", options: ["C", "G", "E", "A"], correctOptionIndex: 3),
        ]
    
    static let trebleQuestionsBC: [Question] = [
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_b4", options: ["B", "D", "F", "A"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_b4", options: ["F", "B", "C", "E"], correctOptionIndex: 1),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_f4", options: ["F", "C", "G", "B"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_b4", options: ["B", "C", "A", "F"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_b4", options: ["C", "A", "B", "G"], correctOptionIndex: 2),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c5", options: ["E", "G", "B", "C"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c5", options: ["B", "A", "C", "G"], correctOptionIndex: 2),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c5", options: ["C", "B", "A", "D"], correctOptionIndex: 0),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c5", options: ["F", "E", "B", "C"], correctOptionIndex: 1),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c5", options: ["C", "G", "B", "D"], correctOptionIndex: 0),
        ]
    
    static let bassQuestionsCDE: [Question] = [
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c3", options: ["C", "E", "D", "G"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c3", options: ["D", "F", "C", "A"], correctOptionIndex: 2),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c3", options: ["B", "C", "E", "D"], correctOptionIndex: 1),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c3", options: ["A", "G", "F", "C"], correctOptionIndex: 3),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_d3", options: ["E", "D", "C", "B"], correctOptionIndex: 1),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_d3", options: ["D", "G", "A", "F"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_d3", options: ["C", "F", "B", "D"], correctOptionIndex: 3),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_e3", options: ["F", "C", "D", "E"], correctOptionIndex: 3),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_e3", options: ["E", "B", "G", "A"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_e3", options: ["D", "A", "E", "C"], correctOptionIndex: 2),
        ]
        
        static let bassQuestionsFGA: [Question] = [
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_f3", options: ["G", "A", "F", "C"], correctOptionIndex: 2),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_f3", options: ["F", "E", "D", "B"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_f3", options: ["A", "F", "G", "D"], correctOptionIndex: 1),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_f3", options: ["C", "B", "E", "F"], correctOptionIndex: 3),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_g3", options: ["A", "F", "B", "G"], correctOptionIndex: 3),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_g3", options: ["E", "G", "C", "D"], correctOptionIndex: 1),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_g3", options: ["G", "A", "F", "B"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_a3", options: ["F", "G", "A", "C"], correctOptionIndex: 2),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_a3", options: ["A", "B", "D", "E"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_a3", options: ["C", "F", "E", "A"], correctOptionIndex: 3),
        ]
        
        static let bassQuestionsBC: [Question] = [
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_b3", options: ["B", "C", "D", "A"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_b3", options: ["E", "B", "F", "G"], correctOptionIndex: 1),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_b3", options: ["A", "G", "C", "B"], correctOptionIndex: 3),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_b3", options: ["C", "A", "B", "F"], correctOptionIndex: 2),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_b3", options: ["B", "E", "A", "D"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c4", options: ["G", "B", "A", "C"], correctOptionIndex: 3),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c4", options: ["F", "D", "C", "E"], correctOptionIndex: 2),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c4", options: ["C", "A", "B", "G"], correctOptionIndex: 0),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c4", options: ["B", "C", "F", "D"], correctOptionIndex: 1),
            Question(title: "Identify the note on the bass clef staff.", imageName: "bass_c4", options: ["E", "C", "G", "A"], correctOptionIndex: 1),
        ]
    
        
        /*
        Question(title: "Identify the note on the bass clef staff.", imageName: "bass_e3", options: ["C", "G", "E", "D"], correctOptionIndex: 2),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c4", options: ["Middle C", "D", "E", "A"], correctOptionIndex: 0),
        Question(title: "Identify the note on the bass clef staff.", imageName: "bass_f3", options: ["B", "D", "G", "F"], correctOptionIndex: 3),
        Question(title: "Identify the note on the treble clef staff.", imageName: "treble_c5", options: ["E", "C", "F", "G"], correctOptionIndex: 1)*/
    
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    //QuizPage(questionBank: trebleQuestionsFGA)
}
