import Foundation
import SwiftUI
import AVKit

struct AudioPlayer: View {
    let audioNAme = "a4"
    
    @State private var player: AVAudioPlayer?
    @State private var isPlaying = false
    
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("a4")
                
                VStack(spacing: 20) {
                    Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                        .onTapGesture {
                            if isPlaying {
                                stopAudio()
                            } else {
                                playAudio()
                            }
                        }
                }
            }
            .foregroundColor(.white)
            
        }
    }
    
    private func playAudio() {
        player?.play()
        isPlaying = true
    }
    
    private func stopAudio() {
        player?.pause()
        isPlaying = false
    }
    
}
    struct Prev: PreviewProvider {
        static var previews: some View {
            AudioPlayer()
        }
    }



