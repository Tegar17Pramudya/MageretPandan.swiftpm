import SwiftUI

class MakeWeaponViewModel: ObservableObject {
    @Published var model = MakeWeaponModel()

    func onPandanDrop(pandanNum: Int, position: CGPoint) {
        var pandan = model.pandans[pandanNum]
        pandan[0] = position.x
        pandan[1] = position.y
        model.pandans[pandanNum] = pandan
        model.pandans[pandanNum][2] = 1.0
    }
    
    func onPandanRelease(pandanNum: Int, position: CGPoint) {
        var pandan = model.pandans[pandanNum]
        pandan[0] = position.x
        pandan[1] = position.y
        model.pandans[pandanNum] = pandan
        model.rectangle[pandanNum] = onBasket(position: pandan)
        model.pandansInBasket = pandanCounter(model.rectangle)
        model.pandans[pandanNum][2] = 0.7
    }
    
    func onBasket(position: [CGFloat]) -> Bool {
        let xOver = abs(model.Pos[0] - position[0])
        let yOver = abs(model.Pos[1] - position[1])
        return (xOver < 250 && yOver < 150)
    }
    
    func pandanCounter(_ arr: [Bool]) -> Int {
        return arr.reduce(0) { $1 ? $0 + 1 : $0 }
    }
}
