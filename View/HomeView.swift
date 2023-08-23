import SwiftUI
import AVFoundation

@available(iOS 16.0, *)
var audioPlayer : AVAudioPlayer?

@available(iOS 16.0, *)
struct Home: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Image("BgDaun")
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .ignoresSafeArea(.all)
                    VStack {
                        Text("MAGERET PANDAN")
                            .fontWeight(.bold)
                            .font(.system(size: 100))
                        NavigationLink(destination: PrologueView()) {
                            Image("PlayButton")
                            //Text("Send")
                                .padding(.horizontal)
                                .padding()
                                .cornerRadius(.infinity)
                                .scaleEffect(1.5)
                        }
                        
                    }
                }
            }.navigationBarHidden(true)
        }.navigationBarBackButtonHidden(true)
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


//Bridge Bettwen Swiftui & uiKit
struct MainVCVIew: UIViewControllerRepresentable{
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        //view controller object
        return MainViewController()
    }
}
