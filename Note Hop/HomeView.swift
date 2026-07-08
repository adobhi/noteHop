//
//  HomeView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/17/26.
//

import SwiftUI

struct HomeView: View {
    var noteImage = Constants.noteImageURL
    var sheetMusicImage1 = Constants.sheetMusicImageURL1
    var sheetMusicImage2 = Constants.sheetMusicImageURL2
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Spacer()
                
                Text("Ready for your next lesson?")
                    .cuteFont(30)
                    .padding(.leading, 20)
                HStack {
                    Button {
                        
                    } label: {
                        Text(Constants.firstLesson)
                            .cuteFont(20)
                            .pinkButton()
                    }
                    .padding(.leading,20)
                    Button {
                        
                    } label: {
                        Text(Constants.secondLesson)
                            .cuteFont(20)
                            .pinkButton()
                    }

                }
                
                Spacer()
                
                Text("Pick up where you left off?")
                    .cuteFont(30)
                    //.padding(.leading,20)
                HStack (){
                    Button {
                        
                    } label: {
                        sheetMusicButton(sheetMusicImage1)
                    }
                    
                    Button {
                        
                    } label: {
                        sheetMusicButton(sheetMusicImage2)
                    }
                }
                
                Spacer()
                
                Text("Let's see how you're doing?")
                    .cuteFont(30)

                HStack (){
                    Button {
                        
                    } label: {
                        Text(Constants.music1)
                            .cuteFont(20)
                            .pinkButton()
                                
                    }
                    Button {
                        
                    } label: {
                        Text(Constants.secondLesson)
                            .cuteFont(20)
                            .pinkButton()
                    }
                }
                
                Spacer()
                
                
            }
            .frame(maxWidth: .infinity)

        }
        .safeAreaInset(edge: .top, spacing: 0) {
            let greetings = ["Look who finally decided to show up", "Oh, great, you’re back. The data missed you", "Look out, the main character has logged in", "Your data has been expecting you, Captain", "Warning: High levels of productivity ahead", "My algorithms predict you will do great things", "Loading your digital empire", "The data is ready. Are you?"]
            let randomInt = Int.random(in: 0 ..< greetings.count-1)
            let greeting = greetings[randomInt]
            Text(greeting)
                .cuteFont(40)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("buttonColor")
                    .ignoresSafeArea(edges: .top))
        }
        
    }
}

#Preview {
    HomeView()
}
