import SwiftUI

class HealingViewModel: ObservableObject {
    @Published var model = HealingModel()

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
        
        model.medicines[medicineNum].isPlaced = onBasket(position: [medicine.x, medicine.y])
        
        if model.medicines.filter({ $0.isPlaced }).count == 4 {
            model.epilogue = true
        }
    }
    
    func onBasket(position: [CGFloat]) -> Bool {
        let xOver = abs(700 - position[0])
        let yOver = abs(500 - position[1])
        return (xOver < 220 && yOver < 260)
    }
}

