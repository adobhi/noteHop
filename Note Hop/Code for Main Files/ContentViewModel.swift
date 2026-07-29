//
//  ContentViewModel.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/28/26.
//

import Combine
import FirebaseAuth
import Foundation

class ContentViewModel: ObservableObject {
    @Published var currentUserID: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in self?.currentUserID = user?.uid ?? ""}
        
    }
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
