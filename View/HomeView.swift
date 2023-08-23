import SwiftUI

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

//Bridge Bettwen Swiftui & uiKit
struct MainVCVIew: UIViewControllerRepresentable{
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        //view controller object
        return MainViewController()
    }
}
