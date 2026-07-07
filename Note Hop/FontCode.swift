//
//  FontCode.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/7/26.
//

import SwiftUI

struct FontCode: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.custom("DynaPuff-Regular", size: 50))
                .padding()
            Text("Hello, Coder!")
                .cuteFont(100)
                .padding()
        }
    }
    init() {
        for fam in UIFont.familyNames {
            print(fam)
            
            for name in UIFont.fontNames(forFamilyName: fam) {
                
                print("-- \(name)")
            }
        }
    }
    
    
}

#Preview {
    FontCode()
}
