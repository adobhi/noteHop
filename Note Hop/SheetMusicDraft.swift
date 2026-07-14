//
//  SheetMusicDraft.swift
//  Note Hop
//
//  Created by Anvi Dobhal on 7/9/26.
//

import SwiftUI
import PDFKit

struct Song: Identifiable {
    let id = UUID()
    let filename: String
    let title: String
    let composer: String
    let instrument: String
    let lessonInfo: String
}

struct SongDetailView: View{
    let song: Song
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 20){
                
                Button(action: {
                  dismiss()
                }) {
                    HStack {
                        Image(systemName: "arrow.left.circle.fill")
                            .foregroundStyle(Color("aqua"))
                            .font(.title2)
                        Text("Back to Music Library")
                            .cuteFont(20)
                            .foregroundColor(Color("aqua"))
                    }
                    .padding(.top,60)
                    .padding(.leading,20)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(song.title)
                        .cuteFont(40)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.primary)
                    Text("Composed by \(song.composer)")
                        .cuteFont(20)
                        .font(.title3)
                        .italic()
                        .foregroundColor(.secondary)
                    Text("Instrument: \(song.instrument)")
                        .cuteFont(20)
                        .font(.title3)
                        .italic()
                        .foregroundColor(.secondary)
                    
                }
                .padding(.horizontal)
                //.padding(.top,5)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lesson Notes")
                        .cuteFont(25)
                        .font(.headline)
                        .foregroundColor(Color("textColor"))
                    Text(song.lessonInfo)
                        .cuteFont(20)
                        .font(.body)
                        .foregroundColor(Color("textColor"))
                }
                .padding()
                .background(Color("lightColor").opacity(0.3))
                .cornerRadius(12)
                .padding(.horizontal)
                
                Text("Sheet Music")
                    .cuteFont(40)
                    .font(.title2)
                    //.bold()
                    .padding(.horizontal)
                SheetMusicDraft(pdfFileName: song.filename)
                    .frame(height: 500)
                    .cornerRadius(12)
                    .shadow(radius: 4)
                    .padding(.horizontal)
            }
            .padding(.vertical)
        }
        //.background(Color(.systemGroupedBackground))
        //.navigationBarTitleDisplayMode(.inline)
        
    }
}


struct SheetMusicDraft: UIViewRepresentable {
    let pdfFileName: String
    
    func makeUIView(context: Context) -> PDFView{
        let pdfView = PDFView()
        if let fileURL = Bundle.main.url(forResource: pdfFileName, withExtension: "pdf") {
            pdfView.document = PDFDocument(url: fileURL)
        } else {
            print("Oops! Could not find a file named \(pdfFileName).pdf in the app.")
        }
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context){}
    
    
}

struct DraftView: View {
    //let songs = ["golden_hour", "can_you_hear_the_music"]
    let myLibrary = Library.myLibrary
    
    var body: some View {
        NavigationStack {
            //VStack {
                List(myLibrary) { song in
                    NavigationLink(destination: SongDetailView(song: song)) {
                        HStack {
                            Image(systemName: "music.note.list")
                                .foregroundColor(Color("aqua"))
                                .font(.title3)
                            VStack(alignment: .leading) {
                                Text(song.title)
                                    .cuteFont(20)
                                    .font(.headline)
                                Text(song.composer)
                                    .cuteFont(20)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text(song.instrument)
                                    .cuteFont(20)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 4)
                    }
                //}
                //.navigationTitle("Music Library")
                
            }
                .padding(.top, 80)
        }
        .safeAreaInset(edge: .top, spacing: 0) {
            Text("Music Library")
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
    DraftView()
}
