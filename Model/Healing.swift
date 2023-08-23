import Foundation

//HealingView
struct Healing {
    var epilogue = false
    var Pos: [CGFloat] = [700, 500]
    var Bowl: [CGFloat] = [180, 840]
    var rectangle: [Bool] = Array(repeating: false, count: 4)
    var medicines: [Medicine] = [
        Medicine(x: 180, y: 820, scale: 0.7),
        Medicine(x: 180, y: 820, scale: 0.7),
        Medicine(x: 180, y: 820, scale: 0.7),
        Medicine(x: 180, y: 820, scale: 0.7)
    ]
    func medicineCounter(_ arr: [Bool]) -> Int {
            return arr.reduce(0) { $1 ? $0 + 1 : $0 }
    }
}

struct Medicine {
    var x: CGFloat
    var y: CGFloat
    var scale: CGFloat
    var isPlaced: Bool = false
}
