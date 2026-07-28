//
//  LoginPage.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/26/26.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        NavigationStack{
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color("lightAqua"))
                        .ignoresSafeArea()
                    VStack {
                        Text("Note Hop")
                            .cuteFont(70)
                            .bold()
                            .padding(.bottom, 20)
                        Text("Learn music fast, for fun, for and free!")
                            .cuteFont(30)
                            .frame(width: 300)
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(maxWidth: .infinity * 3)
                .frame(height: 300)
            }
            Spacer()
        }
    }
}



#Preview {
    LoginPage()
}
