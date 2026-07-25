//
//  Violin.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/24/26.
//

import SwiftUI

struct Violin: View{
    let trebleBank = Constants.trebleBank
    let bassBank = Constants.bassBank

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(trebleBank.bigBank.indices, id: \.self) { index in let singleQuizArray = trebleBank.bigBank[index]
                        NavigationLink(destination: QuizPage(questionBank: singleQuizArray.bank)){
                            HStack {
                                Image(systemName: "music.note.list")
                                    .foregroundColor(Color("black"))
                                    .font(.title3)
                                VStack(alignment: .leading) {
                                    Text(singleQuizArray.title)
                                        .cuteFont(25)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                        
                    }
                } header: {
                    Text("Reading the Treble Clef")
                        .cuteFont(30)
                }
                Section {
                    Text(bassBank.title)
                        .cuteFont(30)
                    ForEach(bassBank.bigBank.indices, id: \.self) { index in let singleQuizArray = bassBank.bigBank[index]
                        NavigationLink(destination: QuizPage(questionBank: singleQuizArray.bank)){
                            HStack {
                                Image(systemName: "music.note.list")
                                    .foregroundColor(Color("black"))
                                    .font(.title3)
                                VStack(alignment: .leading) {
                                    Text(singleQuizArray.title)
                                        .cuteFont(25)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                        
                    }
            }
                header: {
                    Text(bassBank.title)
                        .cuteFont(30)
                }
        }
                //.searchable(text: $searchText, prompt: "Search title, composer, or instrument!")
            .safeAreaInset(edge: .top, spacing: 0) {
                HStack(spacing: 0) {
                    Text("Violin")
                        .cuteFont(50)
                        .foregroundStyle(Color("bannerFont"))
                        .padding(20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image("violin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                }
                .background(Color("lightColor"))
            }        }
        
    }
}


#Preview {
    Violin()
}

