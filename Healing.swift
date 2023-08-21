//import SwiftUI
//
//@available(iOS 16.0, *)
//
//struct Healing: View {
//
//    @State private var epilogue = false
//    private let medicineSize: CGFloat = 300
//    @State var rectangle: [Bool] = Array(repeating: false, count: 4)
//    @State var Pos: [CGFloat] = [700, 500]
//    @State var Bowl: [CGFloat] = [180, 840]
//    @State var medicines: [[CGFloat]] = [
//        [180, 820, 0.7],
//        [180, 820, 0.7],
//        [180, 820, 0.7],
//        [180, 820, 0.7],
//    ]
//
//    var body: some View {
//        ZStack {
//            Text("Now that your fight has ended, \n let's treat each other's wounds. \n Help your friend \n by treating the 4 wounds \n on their back with the traditional \n medicine below. \n\n Just drag \n 4 traditional medicines \n onto each wound \n on their back.")
//                .fontWeight(.bold)
//                .font(.system(size: 30))
//                .position(x: 260, y: 300)
//
//            Image("Healing")
//                .resizable()
//                .scaledToFit()
//                .position(x: Pos[0], y: Pos[1])
//
//            Image("Bowl")
//                .resizable()
//                .frame(width: 300, height: 300)
//                .position(x: Bowl[0], y: Bowl[1])
//
//            ForEach(0..<medicines.count, id: \.self) { i in
//                Group {
//                    Image("Medicine")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: medicineSize * medicines[i][2], height: medicineSize * medicines[i][2])
//                        .position(x: medicines[i][0], y: medicines[i][1])
//                        .gesture(dragGesture(medicineNum: i))
//                }
//                .opacity(rectangle[i] ? 0.5 : 1.0)
//            }
//        }
//        .navigationBarBackButtonHidden(true)
//        .background(
//            NavigationLink(
//                destination: EpilogueView(),
//                isActive: $epilogue,
//                label: { EmptyView() }
//            )
//        )
//    }
//
//    func dragGesture(medicineNum: Int) -> some Gesture {
//        return DragGesture()
//            .onChanged(
//                { val in
//                    let medicine = [val.location.x, val.location.y, self.medicines[medicineNum][2]]
//                    self.medicines[medicineNum] = medicine
//
//                    //Animasi Pandan
//                    withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
//                        self.medicines[medicineNum][2] = 1.0
//                    }
//                }
//            )
//            .onEnded({ val in
//                let medicine = [val.location.x, val.location.y, self.medicines[medicineNum][2]]
//
//                self.rectangle[medicineNum] = onBasket(position: medicine)
//
//                let countmedicine = self.medicineCounter(self.rectangle)
//
//                print("medicine ada: \(countmedicine)")
//
//                if countmedicine == 4 {
//                    print("Medicine masuk semua")
//                    epilogue = true
//                } else {
//                    print("Medicine ada: \(countmedicine)")
//
//                }
//
//                //Animasi medicine
//                withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
//                    self.medicines[medicineNum][2] = 0.7
//                }
//            })
//    }
//
//    func onBasket(position: [CGFloat]) -> Bool {
//        let xOver = abs(Pos[0] - position[0])
//        let yOver = abs(Pos[1] - position[1])
//        return (xOver < 220 && yOver < 260)
//    }
//
//    func medicineCounter(_ arr: [Bool]) -> Int {
//        return arr.reduce(0) { $1 ? $0 + 1 : $0 }
//    }
//
//}
