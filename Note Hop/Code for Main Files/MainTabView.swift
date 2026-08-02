//
//  MainTabView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/28/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            Tab(Constants.home,systemImage: Constants.homeIcon){
                HomeView()
                //Image("watercolor-music-note")
            }
            //Tab(Constants.streak,systemImage: Constants.streakIcon){
                //Text(Constants.streak)
            //}
            Tab(Constants.library, systemImage: Constants.libraryIcon) {
                DraftView()
            }
            Tab("Courses",systemImage: "building"){
                InstrumentDashboardView()
            }
            /*
            Tab(Constants.friends,systemImage: Constants.friendsIcon){
                Text(Constants.friends)
            }
            Tab(Constants.profile, systemImage: Constants.profileIcon){
                Text(Constants.profile)
             }
             */
        }
    }
}

#Preview {
    MainTabView()
}
