import CoreFoundation

//modelnya dipisah saja biar mudah dicari, jangan digabungkan seperti dibawah

//Fight Fase 1
struct FighterModel { //penamaan tidak usah ditambah model
    var healthPoints: CGFloat
}

//Fight Fase 2
struct Fase2FightModel { //cukup pake 1 saja jika fungsinya sama
    var healthPoints: CGFloat
}

//Make Weapon
struct MakeWeaponModel {
    var pandans: [[CGFloat]] = [
        [320, 800, 0.7],
        [520, 800, 0.7],
        [720, 800, 0.7],
        [920, 800, 0.7],
        [1120, 800, 0.7],
    ]
    
    var rectangle: [Bool] = Array(repeating: false, count: 5)
    var pandanSize: CGFloat = 500
    var ropeSize: CGFloat = 300
    var pandansInBasket: Int = 0
    var Pos: [CGFloat] = [700, 400]
}

//HealingView
struct HealingModel {
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

