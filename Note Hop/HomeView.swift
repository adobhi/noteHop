//
//  HomeView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/17/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            var greetings = ["Look who finally decided to show up.", "Oh, great, you’re back. The data missed you.", "Error 404: Motivation not found.", "Welcome back. Try not to break anything today.", "Still here? The servers are behaving.", "Look out, the main character has logged in.", "Your data has been expecting you, Captain.", "Grab some coffee. We have worlds to conquer.", "Warning: High levels of productivity ahead.", "Human detected. Initializing friendly protocol.", "My algorithms predict you will do great things.", "I kept the seat warm for you. Figuratively.", "Loading your digital empire. Hold your applause.", "Beep boop. Translation: Welcome back.", "Ah, my favorite distraction. Welcome back.", "Tap anywhere to pretend you are working.", "Glad you're here. I was getting bored.", "Less scrolling, more doing. Just kidding.", "Please insert coffee to continue.", "The data is ready. Are you?"]
            var randomInt = Int.random(in: 0 ..< greetings.count)
            var greeting = greetings[randomInt]
            Text(greeting)
                .font(.largeTitle)
            
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HomeView()
}
