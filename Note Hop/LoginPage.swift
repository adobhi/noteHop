//
//  LoginPage.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/26/26.
//

import SwiftUI

struct LoginPage: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                //Header
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
                
                //Login Form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color("lightColor"))
                            Text("Log In")
                                .foregroundColor(Color("bannerFont"))
                                .cuteFont(20)
                                .padding(8)
                        }
                    }
                    
                }
                
                //Create Account
                VStack {
                    Text("New around here?")
                        .cuteFont(25)
                    NavigationLink(destination: RegisterView()) {
                            Text("Create an account")
                                .foregroundColor(Color("heavyColor"))
                                .cuteFont(25)
                                .padding(.top, 2)
                        }
                }
                .padding(.top, 2)
                
            }
        }
    }
}



#Preview {
    LoginPage()
}
