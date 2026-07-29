//
//  Violin.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/24/26.
//

import SwiftUI

struct Piano: View{
    let trebleBank = Constants.trebleBank
    let bassBank = Constants.bassBank
    var moveOverPic: Int? = nil
    var nameSize: Double? = nil

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
                VStack {
                    Button(action: {
                        dismiss()
                    }) { Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(Color("bannerFont"))
                        //.background(Color("lightColor"))
                            .frame(maxWidth: .infinity, alignment: .leading) // Fills width, aligns left
                        
                            .font(.title2)
                            .padding(.leading,15)
                    }
                    HStack(spacing: 0) {
                        
                        Text("Piano")
                            .cuteFont(CGFloat(nameSize ?? 40))
                            .foregroundStyle(Color("bannerFont"))
                        //.padding(20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                        
                        Image("piano")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 160, height: 100)
                            .offset(x: CGFloat(moveOverPic ?? 0),y:-10)
                    }
                }
                
                .background(Color("lightColor"))
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationBarBackButtonHidden(true)

        
    }
}


#Preview {
    Piano()
}

