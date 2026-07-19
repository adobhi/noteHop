//
//  HomeView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/17/26.
//

import SwiftUI

struct HomeView: View {
    let greetings = ["Look who finally decided to show up", "Oh, great, you’re back. The data missed you", "Look out, the main character has logged in", "Your data has been expecting you, Captain", "Warning: High levels of productivity ahead", "My algorithms predict you will do great things", "Loading your digital empire", "The data is ready. Are you?"]
    @State private var randomGreeting: String = ""
    
    var body: some View {
        NavigationStack {
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
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,20)
                    HStack {
                        NavigationLink {
                            SongDetailView(song: Constants.theEntertainer)
                        } label: {
                            sheetMusicButton("theEntertainer")
                                .padding(.leading,20)
                        }
                        
                        NavigationLink {
                            SongDetailView(song: Constants.canYouHear)
                        } label: {
                            sheetMusicButton("canYouHear")
                        }
                        
                        NavigationLink {
                            SongDetailView(song: Constants.goldenHour)
                        } label: {
                            sheetMusicButton("goldenHour")
                            
                        }
                    }
                
                Spacer()
                
                Text("Let's see how you're doing?")
                    .cuteFont(30)
                    .padding(20)
                
                HStack (){
                    Button {
                        
                    } label: {
                        statsButton("fire")
                        
                        
                    }
                    .padding(.leading, 20)
                    Button {
                        
                    } label: {
                        statsButton("gem")
                    }
                }
                
                Spacer()
                
                
            }
            .frame(maxWidth: .infinity)
            
        }
            
        .safeAreaInset(edge: .top, spacing: 0) {

            let randomInt = Int.random(in: 0 ..< greetings.count-1)
            let greeting = greetings[randomInt]
            Text(greeting)
                .cuteFont(40)
                .foregroundStyle(Color("bannerFont"))
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("lightColor")
                    .ignoresSafeArea(edges: .top))
        }
    }
        .onAppear {
            let randomInt = Int.random(in: 0..<greetings.count)
            randomGreeting = greetings[randomInt]
        }
        
        
    }
}

#Preview {
    HomeView()
}
