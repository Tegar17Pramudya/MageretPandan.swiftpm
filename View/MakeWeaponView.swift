import SwiftUI

@available(iOS 16.0, *)
struct MakeWeapon: View {
    @StateObject private var viewModel = MakeWeaponViewModel()
    @State private var letsFight = false
    
    var body: some View {
        ZStack {
            Image("BgDaun")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .blur(radius: 12)
            
            Text("Make Your Own Weapon \n With Pandan and rope. \n Put 4 pandan leaves \n and a string into the box \n to make a pandan stick. \n\n This pandan stick is \n the one you \n will use as a weapon.")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .position(x: 260, y: 300)
            
            Rectangle()
                .frame(width: 460, height: 450)
                .foregroundColor(.brown)
                .opacity(0.5)
                .position(x: viewModel.model.Pos[0], y: viewModel.model.Pos[1])
            
            Group {
                ForEach(0..<viewModel.model.pandans.count, id: \.self) { pandanIndex in
                    Image("PandanLeaves")
                        .resizable()
                        .scaledToFit()
                        .frame(width: viewModel.model.pandanSize * viewModel.model.pandans[pandanIndex][2], height: viewModel.model.pandanSize * viewModel.model.pandans[pandanIndex][2])
                        .position(x: viewModel.model.pandans[pandanIndex][0], y: viewModel.model.pandans[pandanIndex][1])
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    viewModel.onPandanDrop(pandanNum: pandanIndex, position: value.location)
                                }
                                .onEnded { value in
                                    viewModel.onPandanRelease(pandanNum: pandanIndex, position: value.location)
                                    if viewModel.model.pandansInBasket == 5 {
                                        letsFight = true
                                    }
                                }
                        )
                }
            }
            NavigationLink(
                destination: ContentView(),
                isActive: $letsFight,
                label: { EmptyView() }
            )
        }
        .navigationBarBackButtonHidden(true)
    }
}
