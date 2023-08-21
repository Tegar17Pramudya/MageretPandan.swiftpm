import CoreFoundation

//Fight Fase 1
struct FighterModel {
    var healthPoints: CGFloat
}

//Fight Fase 2
struct Fase2FightModel {
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
//struct Medicine {
//    var x: CGFloat
//    var y: CGFloat
//    var scale: CGFloat
//}
