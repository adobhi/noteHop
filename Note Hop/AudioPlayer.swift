import Foundation
import SwiftUI
import AVKit

struct AudioPlayer: View {
    
    var player: AVAudioPlayer?
    let audioName: String
    let noteImage: String
    
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying = false
    @State private var totalTime: TimeInterval = 0.0
    
    
    var body: some View {
        Image(noteImage)
            //.font(.largeTitle)
            .resizable()
            .scaledToFit()
            .frame(height: 180)
            .background(Color(.systemGray6))
            .cornerRadius(16)
            .shadow(radius: 2)
            .padding(.horizontal)
            .onTapGesture {
                            /*if isPlaying {
                                stopAudio()
                            } else {
                                playAudio()
                            }
            */
                playAudio()
        }
        .onAppear(perform: setupAudio)
    }
    
    private func setupAudio() {
    guard let url = Bundle.main.url(forResource: audioName, withExtension: "mp3") else {
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            totalTime = audioPlayer?.duration ?? 0.0
        } catch {
            print("Error loading audio: \(error)")
        }
    }
    
    
    private func playAudio() {
        audioPlayer?.play()
        isPlaying = true
    }
    
    private func stopAudio() {
        audioPlayer?.pause()
        isPlaying = false
    }
    
}
    struct Prev: PreviewProvider {
        static var previews: some View {
            //AudioPlayer(audioName: "a4", noteImage: )
        }
    }



