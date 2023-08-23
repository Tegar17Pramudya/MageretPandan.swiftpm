import Foundation

//Make Weapon
struct MakeWeapon {
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
