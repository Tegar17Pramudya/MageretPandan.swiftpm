//import SwiftUI
//
//@available(iOS 16.0, *)
//struct Healing: View {
//    @StateObject private var viewModel = HealingViewModel()
//    private let medicineSize: CGFloat = 300
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
//                .position(x: viewModel.Pos[0], y: viewModel.Pos[1])
//            
//            Image("Bowl")
//                .resizable()
//                .frame(width: 300, height: 300)
//                .position(x: viewModel.Bowl[0], y: viewModel.Bowl[1])
//            
//            ForEach(0..<viewModel.medicines.count, id: \.self) { i in
//                Group {
//                    Image("Medicine")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: medicineSize * viewModel.medicines[i].scale, height: medicineSize * viewModel.medicines[i].scale)
//                        .position(x: viewModel.medicines[i].x, y: viewModel.medicines[i].y)
//                        .gesture(dragGesture(medicineNum: i))
//                }
//                .opacity(viewModel.rectangle[i] ? 0.5 : 1.0)
//            }
//        }
//        .navigationBarBackButtonHidden(true)
//        .background(
//            NavigationLink(
//                destination: EpilogueView(),
//                isActive: $viewModel.epilogue,
//                label: { EmptyView() }
//            )
//        )
//    }
//    
//    func dragGesture(medicineNum: Int) -> some Gesture {
//        return DragGesture()
//            .onChanged(
//                { val in
//                    let medicine = Medicine(x: val.location.x, y: val.location.y, scale: viewModel.medicines[medicineNum].scale)
//                    viewModel.medicines[medicineNum] = medicine
//                    
//                    // Animasi Pandan
//                    withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
//                        viewModel.medicines[medicineNum].scale = 1.0
//                    }
//                }
//            )
//            .onEnded({ val in
//                let medicine = Medicine(x: val.location.x, y: val.location.y, scale: viewModel.medicines[medicineNum].scale)
//                
//                viewModel.rectangle[medicineNum] = viewModel.onBasket(position: CGPoint(x: medicine.x, y: medicine.y))
//                
//                let countmedicine = viewModel.medicineCounter(viewModel.rectangle)
//                
//                if countmedicine == 4 {
//                    viewModel.startEpilogue()
//                }
//                
//                // Animasi medicine
//                withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
//                    viewModel.medicines[medicineNum].scale = 0.7
//                }
//            })
//    }
//}
//
//
//
//
