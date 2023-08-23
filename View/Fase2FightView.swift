import SwiftUI

@available(iOS 16.0, *)
struct Fase2FightView: View {
    @StateObject private var viewModel = Fase2FightViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            MainVCVIew()
            Image("ArenaFase2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all)
            
            ZStack(alignment: .leading) {
                Spacer()
                Rectangle()
                    .frame(width: 1200, height: 50)
                    .opacity(0.7)
                    .foregroundColor(.gray)
                    .offset(x:30, y:30)
                
                Rectangle()
                    .frame(width: viewModel.healthPoints , height: 50)
                    .foregroundColor(.red)
                    .offset(x:30, y:30)
            }
            VStack{
                ZStack{
                    Image("Fighter1Final")
                        .offset(viewModel.fighter1Offset)
                        .scaleEffect(1)
                        .position(x:geometry.size.width/2, y:geometry.size.height/3)
                    
                    Image("Fighter2Final")
                        .offset(viewModel.fighter2Offset)
                        .scaleEffect(1)
                        .position(x:geometry.size.width/2, y:geometry.size.height/3)
                    
                    Group{
                        Image("LeftHandFighter1")
                            .offset(viewModel.handOffset)
                            .scaleEffect(1)
                            .position(x:geometry.size.width/2+50, y:geometry.size.height/3-70)
                    }
                    
                }
                
                Button("-- LET'S FIGHT --") {
                    viewModel.startFight()
                }
                //.contentShape(Rectangle())
                .frame(width: 150, height: 40)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(50)
                .font(.headline)
                .scaleEffect(2.0)
                
                NavigationLink(destination: HealingView(), isActive: $viewModel.isOver) {
                    //EmptyView()
                }
            }
            .padding(.vertical, 200)
        }
        .navigationBarBackButtonHidden(true)
    }
}
