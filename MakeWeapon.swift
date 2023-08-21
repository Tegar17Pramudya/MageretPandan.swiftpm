//import SwiftUI
//
//@available(iOS 16.0, *)
//struct MakeWeapon: View {
//    
//    @State private var letsFight = false
//    private let pandanSize: CGFloat = 500
//    private let ropeSize: CGFloat = 300
//    @State var rectangle: [Bool] = Array(repeating: false, count: 5)
//    @State var Pos: [CGFloat] = [700, 400]
//    @State var pandans: [[CGFloat]] = [
//        [320, 800, 0.7],
//        [520, 800, 0.7],
//        [720, 800, 0.7],
//        [920, 800, 0.7],
//        [1120, 800, 0.7],
//    ]
//    
//    var body: some View {
//        ZStack {
//            Image("BgDaun")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea(.all)
//                .blur(radius: 12)
//            
//            Text("Make Your Own Weapon \n With Pandan and rope. \n Put 4 pandan leaves \n and a string into the box \n to make a pandan stick. \n\n This pandan stick is \n the one you \n will use as a weapon.")
//                .fontWeight(.bold)
//                .font(.system(size: 30))
//                .position(x: 260, y: 300)
//            
//            Rectangle()
//                .frame(width: 460, height: 450)
//                .foregroundColor(.brown)
//                .opacity(0.5)
//                .position(x: Pos[0], y: Pos[1])
//            
//            Group {
//                Image("PandanLeaves")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: pandanSize * pandans[0][2], height: pandanSize * pandans[0][2])
//                    .position(x: pandans[0][0], y: pandans[0][1])
//                    .gesture(dragGesture(pandanNum: 0))
//                Image("PandanLeaves")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: pandanSize * pandans[1][2], height: pandanSize * pandans[1][2])
//                    .position(x: pandans[1][0], y: pandans[1][1])
//                    .gesture(dragGesture(pandanNum: 1))
//                Image("PandanLeaves")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: pandanSize * pandans[2][2], height: pandanSize * pandans[2][2])
//                    .position(x: pandans[2][0], y: pandans[2][1])
//                    .gesture(dragGesture(pandanNum: 2))
//                Image("PandanLeaves")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: pandanSize * pandans[3][2], height: pandanSize * pandans[3][2])
//                    .position(x: pandans[3][0], y: pandans[3][1])
//                    .gesture(dragGesture(pandanNum: 3))
//                Image("Rope")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: ropeSize * pandans[4][2], height: ropeSize * pandans[4][2])
//                    .position(x: pandans[4][0], y: pandans[4][1])
//                    .gesture(dragGesture(pandanNum: 4))
//            }
//        }
//        .navigationBarBackButtonHidden(true)
//        .background()
//        
//        NavigationLink(
//            destination: ContentView(),
//            isActive: $letsFight,
//            label: { EmptyView() }
//        )
//    }
//    
//    func dragGesture(pandanNum: Int) -> some Gesture {
//        return DragGesture()
//            .onChanged(
//                { val in
//                    let pandan = [val.location.x, val.location.y, self.pandans[pandanNum][2]]
//                    self.pandans[pandanNum] = pandan
//                    
//                    //Animasi Pandan
//                    withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
//                        self.pandans[pandanNum][2] = 1.0
//                    }
//                }
//            )
//            .onEnded({ val in
//                let pandan = [val.location.x, val.location.y, self.pandans[pandanNum][2]]
//                
//                self.rectangle[pandanNum] = onBasket(position: pandan)
//                let countpandan = pandanCounter(self.rectangle)
//                
//                //let countPandan = self.pandanCounter(self.rectangle)
//                if countpandan == 5 {
//                    print("Pandan masuk semua")
//                    letsFight = true
//                } else {
//                    print("Pandan ada: \(countpandan)")
//                    
//                }
//                
//                //Animasi Pandan
//                withAnimation(.spring(response: 0.4, dampingFraction: 0.3, blendDuration: 1)) {
//                    self.pandans[pandanNum][2] = 0.7
//                }
//            })
//    }
//    
//    func onBasket(position: [CGFloat]) -> Bool {
//        let xOver = abs(Pos[0] - position[0])
//        let yOver = abs(Pos[1] - position[1])
//        return (xOver < 250 && yOver < 150)
//    }
//    
//    func pandanCounter(_ arr: [Bool]) -> Int {
//        return arr.reduce(0) { $1 ? $0 + 1 : $0 }
//    }
//    
//}
