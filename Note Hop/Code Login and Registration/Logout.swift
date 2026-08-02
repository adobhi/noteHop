//
//  LogOut.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 8/2/26.
//

import SwiftUI
import FirebaseAuth

struct Logout: View {
    var body: some View {
        Button(role: .destructive) {
            do {
                try Auth.auth().signOut()
                print("Successfully logged out!")
            } catch let signOutError as NSError {
                print("Error signing out: %@", signOutError.localizedDescription)
            }
        }
        label: {
            HStack{
                Image(systemName: "rectangle.portrait.and.arrow.forward")
                    .fontWeight(.semibold)
                Text("Log Out")
                    .cuteFont(20)
            }
        }
    }
}

#Preview {
    Logout()
}
