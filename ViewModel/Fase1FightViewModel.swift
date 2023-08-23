import SwiftUI
import AVFoundation

@available(iOS 16.0, *)
var audioPlayer : AVAudioPlayer?

@available(iOS 16.0, *)
class Fase1FightViewModel: ObservableObject {
    @Published var isFase2 = false
    @Published var fighter1Offset = CGSize.zero
    @Published var fighter2Offset = CGSize.zero
    @Published var healthPoints: CGFloat = 1200
    
    func startFight() {
        withAnimation(.linear(duration: 0.1)) {
            fighter1Offset = CGSize(width: 260, height: 10)
            fighter2Offset = CGSize(width: -100, height: -40)
            healthPoints -= 50
            
            if healthPoints <= (650) {
                isFase2 = true
            }
        }
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { _ in
            withAnimation(.linear(duration: 0.1)) {
                self.fighter1Offset = CGSize.zero
                self.fighter2Offset = CGSize.zero
            }
        }
    }
}

//ini logic masuk ke viewmodel
@available(iOS 16.0, *)
func backgroundAudio(){
    guard let path = Bundle.main.path(forResource: "SoundBali", ofType: "mp3")
    else {
        return
    }
    let url = URL(fileURLWithPath: path)
    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)
        if audioPlayer != nil {
            audioPlayer?.stop()
        }
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.numberOfLoops = -1
        audioPlayer?.volume =  0.15
        audioPlayer?.play()
    } catch let error {
        print(error.localizedDescription)
    }
}
