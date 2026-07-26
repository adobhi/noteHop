//  CoursePaths.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/13/26.
//

import SwiftUI

struct CoursePaths: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Instrument Courses")
                        .cuteFont(30)
                        .padding(.leading, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        NavigationLink {
                            TrebleInstruments(title: "Violin",instrumentImage: "violin")
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
                        
                        NavigationLink {
                            Piano()
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
                        NavigationLink {
                            TrebleInstruments(title: "Flute",instrumentImage: "flute")
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
                        NavigationLink {
                            TrebleInstruments(title: "Alto Saxophone",instrumentImage: "sax", nameSize: 35)
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color("heavyAqua"))
                                    .frame(width: 150, height: 150)
                                    .padding(15)
                                VStack {
                                    Text("Alto Saxaphone")
                                        .cuteFont(24)
                                        .foregroundStyle(.black)
                                        .frame(width: 150,height: 100)
                                        //.padding(.bottom,20)
                                    Image("sax")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .offset(y:-20)

                                }
                            }
                            
                        }
                        
                    }
                    HStack {
                        NavigationLink {
                            TrebleInstruments(title: "Trumpet",instrumentImage: "trumpet")
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
                        NavigationLink {
                            TrebleInstruments(title: "Clarinet",instrumentImage: "clarinet")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color("heavyPink"))
                                    .frame(width: 150, height: 150)
                                    .padding(15)
                                VStack {
                                    Text("Clarinet")
                                        .cuteFont(25)
                                        .foregroundStyle(.black)
                                    Image("clarinet")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                }
                            }
                        }
                        
                        
                    }
                    HStack {
                        NavigationLink {
                            BassInstruments(title: "Cello",instrumentImage: "cello")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color("heavyAqua"))
                                    .frame(width: 150, height: 150)
                                    .padding(15)
                                VStack {
                                    Text("Cello")
                                        .cuteFont(25)
                                        .foregroundStyle(.black)
                                    Image("cello")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 90)
                                }
                            }
                        }
                        
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color("heavyYellow"))
                                    .frame(width: 150, height: 150)
                                    .padding(15)
                                Text("More Coming Soon!")
                                    .foregroundStyle(.black)
                                    .cuteFont(30)
                                    .frame(width: 120, height: 120)
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
    }


#Preview {
    CoursePaths()
}
