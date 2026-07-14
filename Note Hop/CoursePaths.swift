//
//  CoursePaths.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/13/26.
//

import SwiftUI

struct CoursePaths: View {
    var body: some View {
        ScrollView {
            HStack {
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("heavyAqua"))
                            .frame(width: 150, height: 150)
                            .padding(15)
                        VStack {
                            Text("Violin")
                                .cuteFont(25)
                                .foregroundStyle(.black)
                            Image("violin")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 80)
                        }
                    }
                }
                
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("heavyYellow"))
                            .frame(width: 150, height: 150)
                            .padding(15)
                        VStack {
                            Text("Piano")
                                .foregroundStyle(.black)
                                .cuteFont(25)
                            Image("piano")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 80)
                        }
                    }
                }
                
            }
            HStack {
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("heavyPink"))
                            .frame(width: 150, height: 150)
                            .padding(15)
                        VStack {
                            Text("Flute")
                                .foregroundStyle(.black)
                                .cuteFont(25)
                            Image("flute")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 80)
                        }
                    }
                }
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("heavyAqua"))
                            .frame(width: 150, height: 150)
                            .padding(15)
                        VStack {
                            Text("Saxaphone")
                                .cuteFont(25)
                                .foregroundStyle(.black)
                            Image("sax")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                        }
                    }

                }
                
            }
            HStack {
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("heavyYellow"))
                            .frame(width: 150, height: 150)
                            .padding(15)
                        VStack {
                            Text("Trumpet")
                                .foregroundStyle(.black)
                                .cuteFont(25)
                            Image("trumpet")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 80)
                        }
                    }
                }
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("heavyPink"))
                            .frame(width: 150, height: 150)
                            .padding(15)
                        VStack {
                            Text("Piano")
                                .cuteFont(25)
                                .foregroundStyle(.black)
                            Image("piano")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                        }
                    }
                }
                

            }
        }
        .padding(.top,20)
        .safeAreaInset(edge: .top, spacing: 0) {
            Text("Course Paths")
                .cuteFont(50)
                .foregroundStyle(Color("bannerFont"))
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("lightColor")
                    .ignoresSafeArea(edges: .top))
        }
            
        }
    }


#Preview {
    CoursePaths()
}
