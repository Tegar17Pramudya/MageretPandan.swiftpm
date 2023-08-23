import SwiftUI

@available(iOS 16.0, *)
struct Healing: View {
    @StateObject private var viewModel = HealingViewModel()

    var body: some View {
        ZStack {
            Text("Now that your fight has ended, \n let's treat each other's wounds. \n Help your friend \n by treating the 4 wounds \n on their back with the traditional \n medicine below. \n\n Just drag \n 4 traditional medicines \n onto each wound \n on their back.")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .position(x: 260, y: 300)

            Image("Healing")
                .resizable()
                .scaledToFit()
                .position(x: viewModel.model.Pos[0], y: viewModel.model.Pos[1])

            Image("Bowl")
                .resizable()
                .frame(width: 300, height: 300)
                .position(x: viewModel.model.Bowl[0], y: viewModel.model.Bowl[1])
            
            ForEach(viewModel.model.medicines.indices, id: \.self) { i in
                Group {
                    Image("Medicine")
                        .resizable()
                        .scaledToFit()
                        .frame(width: viewModel.model.medicines[i].scale * 300, height: viewModel.model.medicines[i].scale * 300)
                        .position(x: viewModel.model.medicines[i].x, y: viewModel.model.medicines[i].y)
                        .gesture(dragGesture(medicineNum: i))
                }
                .opacity(viewModel.model.medicines[i].isPlaced ? 0.5 : 1.0)
            }
        }
        .navigationBarBackButtonHidden(true)
        .background(
            NavigationLink(
                destination: EpilogueView(),
                isActive: $viewModel.model.epilogue,
                label: { EmptyView() }
            )
        )
    }

    func dragGesture(medicineNum: Int) -> some Gesture {
        return DragGesture()
            .onChanged(
                { val in
                    var medicine = viewModel.model.medicines[medicineNum]
                    medicine.x = val.location.x
                    medicine.y = val.location.y
                    medicine.scale = 1.0
                    viewModel.model.medicines[medicineNum] = medicine

                    // Animasi Medicine
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
                        viewModel.model.medicines[medicineNum].scale = 1.0
                    }
                }
            )
            .onEnded({ val in
                var medicine = viewModel.model.medicines[medicineNum]
                medicine.x = val.location.x
                medicine.y = val.location.y
                viewModel.model.medicines[medicineNum] = medicine

                viewModel.model.rectangle[medicineNum] = viewModel.onBasket(xOver: abs(viewModel.model.Pos[0] - medicine.x), yOver: abs(viewModel.model.Pos[1] - medicine.y))

                let countmedicine = viewModel.model.medicineCounter(viewModel.model.rectangle)

                print("medicine ada: \(countmedicine)")

                if countmedicine == 4 {
                    print("Medicine masuk semua")
                    viewModel.model.epilogue = true
                } else {
                    print("Medicine ada: \(countmedicine)")
                }

                // Animasi medicine
                withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
                    viewModel.model.medicines[medicineNum].scale = 0.7
                }
            })
    }

    //masuk ke view model karena termasuk logic
    func medicineCounter(_ arr: [Bool]) -> Int {
        return arr.reduce(0) { $1 ? $0 + 1 : $0 }
    }
}
