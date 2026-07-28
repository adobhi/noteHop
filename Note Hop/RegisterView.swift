//
//  LoginPage.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/26/26.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack {
                //Header
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color("lightAqua"))
                        .ignoresSafeArea()
                    VStack {
                        Button(action: {
                            dismiss()
                        }) { Image(systemName: "xmark.circle.fill")
                                .foregroundStyle(Color("bannerFont"))
                            //.background(Color("lightColor"))
                                .frame(maxWidth: .infinity, alignment: .leading) // Fills width, aligns left
                            
                                .font(.title2)
                                .padding(.leading,15)
                                .offset(y: -10)
                                .offset(x: 10)
                        }
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
                }
                .frame(maxWidth: .infinity * 3)
                .frame(height: 300)
                
                //Login Form
                Form {
                    TextField("Name", text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color("lightColor"))
                            Text("Sign Up")
                                .foregroundColor(Color("bannerFont"))
                                .cuteFont(20)
                                .padding(8)
                        }
                    }
                }
                .scrollContentBackground(.hidden)

                }
                Spacer()
            }
        .navigationBarBackButtonHidden(true)
        }
    }




#Preview {
    RegisterView()
}
