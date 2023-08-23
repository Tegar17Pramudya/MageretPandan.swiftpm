import SwiftUI

class HealingViewModel: ObservableObject {
    @Published var model = Healing()

    func onMedicineDrop(medicineNum: Int, position: CGPoint) {
        var medicine = model.medicines[medicineNum]
        medicine.x = position.x
        medicine.y = position.y
        medicine.scale = 1.0
        model.medicines[medicineNum] = medicine
    }
    
    func onMedicineRelease(medicineNum: Int, position: CGPoint) {
        var medicine = model.medicines[medicineNum]
        medicine.x = position.x
        medicine.y = position.y
        medicine.scale = 0.7
        model.medicines[medicineNum] = medicine
        
        model.medicines[medicineNum].isPlaced = onBasket(xOver: abs(700 - medicine.x),  yOver: abs(500 - medicine.y))
        
        if model.medicines.filter({ $0.isPlaced }).count == 4 {
            model.epilogue = true
        }
    }
    
    func onBasket(xOver: CGFloat, yOver: CGFloat) -> Bool {
        return (xOver < 220 && yOver < 260)
    }
    
    func medicineCounter(_ arr: [Bool]) -> Int {
        return arr.reduce(0) { $1 ? $0 + 1 : $0 }
    }
}

