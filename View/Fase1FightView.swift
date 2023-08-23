import SwiftUI

//kalau bisa gunakan 1 view saja untuk fase 1 sama fase 2, karena kurang lebih komposisinya sama, hanya beda di aset yang ditampilkan
//agar redudansi dikurangi, dan cleancodenya bisa ditingkatkan.
@available(iOS 16.0, *)
struct Fase1FightView: View {
    @StateObject private var viewModel = Fase1FightViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            MainVCVIew()
            Image("ArenaFase1")
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
                    .frame(width: viewModel.healthPoints, height: 50)
                    .foregroundColor(.red)
                    .offset(x:30, y:30)
            }            
            VStack{
                ZStack{
                    Image("Fighter1")
                        .offset(viewModel.fighter1Offset)
                        .position(x: geometry.size.width/4, y: geometry.size.height/2)
                    
                    Image("Fighter2")
                        .offset(viewModel.fighter2Offset)
                        .position(x: geometry.size.width/1.3, y: geometry.size.height/2)
                }
                Spacer()
                Button("-- LET'S FIGHT --") {
                    viewModel.startFight()
                }
                //.contentShape(Rectangle())
                .frame(width: 150, height: 40) // Menyesuaikan ukuran tombol
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(50)
                .font(.headline)
                .scaleEffect(2.0)
                .offset(y: 40)
                
                NavigationLink(destination: LetsFinish(), isActive: $viewModel.isFase2) {
                    EmptyView()
                }
            }
            .padding(.vertical, 200)
        }
        .navigationBarTitle("Game Screen")
        .navigationBarHidden(true)
    }
}
