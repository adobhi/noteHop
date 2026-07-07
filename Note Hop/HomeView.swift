//
//  HomeView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/17/26.
//

import SwiftUI

struct HomeView: View {
    var noteImage = Constants.noteImageURL
    var sheetMusicImage = Constants.sheetMusicImageURL
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                
                let greetings = ["Look who finally decided to show up", "Oh, great, you’re back. The data missed you", "Look out, the main character has logged in", "Your data has been expecting you, Captain", "Warning: High levels of productivity ahead", "My algorithms predict you will do great things", "Loading your digital empire", "The data is ready. Are you?"]
                let randomInt = Int.random(in: 0 ..< greetings.count-1)
                let greeting = greetings[randomInt]
                Text(greeting)
                    .font(.custom("DynaPuff-Regular", size: 45))
                
                Spacer()
                
                Text("Ready for your next lesson?")
                    .cuteFont(30, 10)
                HStack {
                    Button {
                        
                    } label: {
                        Text(Constants.firstLesson)
                            .cuteFont(20,5)
                            .pinkButton()
                    }
                    Button {
                        
                    } label: {
                        Text(Constants.secondLesson)
                            .cuteFont(20,5)
                            .pinkButton()
                    }
                }
                
                Spacer()
                
                Text("Pick up where you left off?")
                    .cuteFont(30,10)
                HStack (){
                    Button {
                        
                    } label: {
                        AsyncImage(url: URL(string: sheetMusicImage)) { image in
                            image
                            //.resizable()
                                .scaledToFill()
                            //.clipped()
                                .frame(width:100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("buttonColor"), lineWidth: 5)
                                )
                        } placeholder: {
                            ProgressView()
                        }
                        /*
                         Text(Constants.music1)
                         .cuteFont(15,5)
                         .pinkButton()
                         
                         .frame(width: 100, height: 100)
                         .foregroundStyle(Color("textColor"))
                         //.bold()
                         .background{
                         RoundedRectangle(cornerRadius: 20, style: .continuous)
                         .stroke(Color("buttonColor"),lineWidth:5)
                         
                         }
                         */
                    }
                    
                    Button {
                        
                    } label: {
                        AsyncImage(url: URL(string: noteImage)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width:100, height: 100)
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
                
                
                Spacer()
                
                Text("Pick up where you left off?")
                    .cuteFont(30,10)
                HStack (){
                    Button {
                        
                    } label: {
                        Text(Constants.music1)
                            .cuteFont(20,5)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(Color("textColor"))
                        //.bold()
                            .background{
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .stroke(Color("buttonColor"),lineWidth:5)
                                
                            }
                    }
                    Button {
                        
                    } label: {
                        Text(Constants.secondLesson)
                            .cuteFont(20,5)
                            .pinkButton()
                    }
                }
                
                Spacer()
                
                
                
            }
            .frame(maxWidth: .infinity)

        }
    }
}

#Preview {
    HomeView()
}
