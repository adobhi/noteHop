//
//  HomeView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/17/26.
//

import SwiftUI

struct HomeView: View {
    var musicImage = Constants.musicImageURL
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            let greetings = ["Look who finally decided to show up.", "Oh, great, you’re back. The data missed you.", "Look out, the main character has logged in.", "Your data has been expecting you, Captain.", "Warning: High levels of productivity ahead.", "My algorithms predict you will do great things.", "Loading your digital empire.", "The data is ready. Are you?"]
            let randomInt = Int.random(in: 0 ..< greetings.count-1)
            let greeting = greetings[randomInt]
            Text(greeting)
                .font(.custom("DynaPuff-Regular", size: 50))
            
            Spacer()
            
            Text("Ready for your next lesson?")
            HStack {
                Button {
                    
                } label: {
                    Text(Constants.firstLesson)
                        .frame(width: 100, height: 50)
                        .foregroundStyle(Color("textColor"))
                        .bold()
                        .background{
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(Color("buttonColor"),lineWidth:5)
                            
                        }
                }
                Button {
                    
                } label: {
                    Text(Constants.secondLesson)
                        .pinkButton()
                        }
                }
                
            Spacer()
            
            Text("Pick up where you left off?")
            HStack (){
                Button {
                    
                } label: {
                    Text(Constants.music1)
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color("textColor"))
                        .bold()
                        .background{
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(Color("buttonColor"),lineWidth:5)
                            
                        }
                }
                
                Button {
                    
                } label: {
                    AsyncImage(url: URL(string: musicImage)) { image in
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
            HStack (){
                Button {
                    
                } label: {
                    Text(Constants.music1)
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color("textColor"))
                        .bold()
                        .background{
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .stroke(Color("buttonColor"),lineWidth:5)
                            
                        }
                }
                Button {
                    
                } label: {
                    Text(Constants.secondLesson)
                        .pinkButton()
                        }
                }
            
            Spacer()
            
            
            
            }
        }
    }
 

#Preview {
    HomeView()
}
