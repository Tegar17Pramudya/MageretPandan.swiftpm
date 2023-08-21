import SwiftUI

@available(iOS 16.0, *)
class ContentViewModel: ObservableObject {
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
