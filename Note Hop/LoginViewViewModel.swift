//
//  LoginViewViewModel.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/28/26.
//

import Foundation
import Combine

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init () {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        print("ILY")
    }
    
}
