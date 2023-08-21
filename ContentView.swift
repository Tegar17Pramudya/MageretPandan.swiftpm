//import SwiftUI
//import UIKit
//
//@available(iOS 16.0, *)
//struct ContentView: View {
//
//    @State private var isFase2 = false
//    @State private var healthPoints: CGFloat = 1200
//    @State private var imageOffset = CGSize.zero
//    @State private var imageOffset2 = CGSize.zero
//
//    var body: some View {
//
//        GeometryReader{ geometry in
//            //bar HP
//            MainVCVIew()
//            Image("ArenaFase1")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .ignoresSafeArea(.all)
//            ZStack(alignment: .leading) {
//                Spacer()
//                Rectangle()
//                    .frame(width: 1200, height: 50)
//                    .opacity(0.7)
//                    .foregroundColor(.gray)
//                    .offset(x:30)
//                    .offset(y:30)
//
//                Rectangle()
//                    .frame(width: healthPoints , height: 50)
//                    .foregroundColor(.red)
//                    .offset(x:30)
//                    .offset(y:30)
//            }
//
//            VStack{
//                ZStack{
//
//                    Image("Fighter1")
//                        .offset(imageOffset)
//                    //.scaleEffect(2)
//                        .position(x:geometry.size.width/4, y:geometry.size.height/2)
//
//                    Image("Fighter2")
//                    //.resizable()
//                        .offset(imageOffset2)
//                    //.scaleEffect(2)
//                        .position(x:geometry.size.width/1.3, y:geometry.size.height/2)
//                }
//
//                Spacer()
//                Button("-- LET'S FIGHT --") {
//                    // Mengubah posisi gambar secara berulang selama 1 detik dengan animasi
//                    withAnimation(.linear(duration: 0.1)) {
//                        imageOffset = CGSize(width: 260, height: 10)
//                        imageOffset2 = CGSize(width: -100, height: -40)
//                        // Kurangi nilai HP ketika terjadi tabrakan
//                        healthPoints -= 50
//
//                        if healthPoints <= (650) {
//                            // Set isActive to true when HP is less than or equal to 50%
//                            isFase2 = true
//                        }
//                    }
//
//                    // Mengembalikan posisi gambar ke semula setelah 1 detik
//                    Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { _ in
//                        withAnimation(.linear(duration: 0.1)) {
//                            imageOffset = CGSize.zero // Menggeser gambar ke posisi semula
//                            imageOffset2 = CGSize.zero
//                        }
//                    }
//                }
//                .contentShape(Rectangle())
//                .frame(width: 150, height: 40) // Menyesuaikan ukuran tombol
//                .background(Color.white)
//                .foregroundColor(.black)
//                .cornerRadius(50)
//                .font(.headline)
//                .scaleEffect(2.0)
//                .offset(y: 40)
//                //.padding()
//
//                // Add NavigationLink to navigate to next screen when isActive is true
//                NavigationLink(destination: LetsFinish(), isActive: $isFase2) {
//                    //EmptyView()
//                }
//            }
//            .padding(.vertical, 200)
//        }
//
//        .navigationBarTitle("Game Screen")
//        .navigationBarHidden(true)
//    }
//
//}
//
