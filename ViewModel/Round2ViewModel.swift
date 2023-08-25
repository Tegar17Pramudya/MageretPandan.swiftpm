import SwiftUI

@available(iOS 16.0, *)
class Round2ViewModel: ObservableObject {
    @Published var isOver = false
    @Published var fighter1Offset = CGSize.zero
    @Published var fighter2Offset = CGSize.zero
    @Published var handOffset = CGSize.zero
    @Published var healthPoints: CGFloat = 800
    
    func startFight() {
        withAnimation(.linear(duration: 0.1)) {
            fighter1Offset = CGSize(width: 20, height: 20)
            fighter2Offset = CGSize(width: -20, height: -20)
            handOffset = CGSize(width: 20, height: 20)
            
            healthPoints -= 40
            
            if healthPoints <= 0 {
                isOver = true
            }
        }
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { _ in
            withAnimation(.linear(duration: 0.1)) {
                self.fighter1Offset = CGSize.zero
                self.fighter2Offset = CGSize.zero
                self.handOffset = CGSize.zero
            }
        }
    }
}
