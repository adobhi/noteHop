//
//  ContentView.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 6/7/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty{
            //signed in page!
            MainTabView()
        } else {
            LoginPage()
        }
    }
}

#Preview {
    ContentView()
}
