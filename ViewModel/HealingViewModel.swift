//import SwiftUI
//
//@available(iOS 16.0, *)
//class HealingViewModel: ObservableObject {
//    @Published var epilogue = false
//    @Published var medicines: [Medicine] = [
//        Medicine(x: 180, y: 820, scale: 0.7),
//        Medicine(x: 180, y: 820, scale: 0.7),
//        Medicine(x: 180, y: 820, scale: 0.7),
//        Medicine(x: 180, y: 820, scale: 0.7)
//    ]
//    
//    let targetPosition: CGPoint = CGPoint(x: 700, y: 500)
//    
//    func onBasket(position: CGPoint) -> Bool {
//        let xOver = abs(targetPosition.x - position.x)
//        let yOver = abs(targetPosition.y - position.y)
//        return (xOver < 220 && yOver < 260)
//    }
//    
//    func medicineCounter(_ arr: [Bool]) -> Int {
//        return arr.reduce(0) { $1 ? $0 + 1 : $0 }
//    }
//    
//    func startEpilogue() {
//        epilogue = true
//    }
//}
