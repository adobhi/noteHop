//
//  ContentView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/7/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home",systemImage: "house"){
                Text("Home")
                Image("watercolor-music-note")
            }
            Tab("Streak",systemImage:"flame"){
                Text("Streak")
            }
            Tab("Shop",systemImage:"building"){
                Text("Shop")
            }
            Tab("Friends",systemImage:"heart"){
                Text("Friends")
            }
            Tab("Profile",systemImage:"person"){
                Text("Profile")
            }
        }
    }
}

#Preview {
    ContentView()
}
