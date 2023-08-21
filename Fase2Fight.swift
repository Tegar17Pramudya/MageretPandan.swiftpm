//import SwiftUI
//import UIKit
//
//@available(iOS 16.0, *)
//struct Fase2Fight: View {
//    
//    @State private var isOver = false
//    
//    @State private var imageOffset1 = CGSize.zero
//    @State private var imageOffset2 = CGSize.zero
//    @State private var imageOffsetHand = CGSize.zero
//    
//    @State private var healthPoints: CGFloat = 800
//    
//    var body: some View {
//        GeometryReader{ geometry in
//            //bar HP
//            MainVCVIew()
//            Image("ArenaFase2")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .ignoresSafeArea(.all)
//            
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
//                    Image("Fighter1Final")
//                        .offset(imageOffset1)
//                        .scaleEffect(1)
//                        .position(x:geometry.size.width/2, y:geometry.size.height/3)
//                    
//                    Image("Fighter2Final")
//                        .offset(imageOffset2)
//                        .scaleEffect(1)
//                        .position(x:geometry.size.width/2, y:geometry.size.height/3)
//                    Group{
//                        Image("LeftHandFighter1")
//                            .offset(imageOffsetHand)
//                            .scaleEffect(1)
//                            .position(x:geometry.size.width/2+50, y:geometry.size.height/3-70)
//                    }
//                    
//                }
//                
//                //Spacer()
//                Button("-- LET'S FIGHT --") {
//                    withAnimation(.linear(duration: 0.1)) {
//                        imageOffset1 = CGSize(width: 20, height: 20)
//                        imageOffset2 = CGSize(width: -20, height: -20)
//                        imageOffsetHand = CGSize(width: 20, height: 20)
//                        
//                        healthPoints -= 20
//                        
//                        if healthPoints == 0 {
//                            // Set isActive to true when HP is less than or equal to 50%
//                            isOver = true
//                        }
//                    }
//                    
//                    Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { _ in
//                        withAnimation(.linear(duration: 0.1)) {
//                            imageOffset1 = CGSize.zero
//                            imageOffset2 = CGSize.zero
//                            imageOffsetHand = CGSize.zero
//                        }
//                    }
//                }
//                .contentShape(Rectangle())
//                .frame(width: 150, height: 40)
//                .background(Color.white)
//                .foregroundColor(.black)
//                .cornerRadius(50)
//                .font(.headline)
//                .scaleEffect(2.0)
//                //.padding()
//                
//                // Add NavigationLink to navigate to next screen when isActive is true
//                NavigationLink(destination: Healing(), isActive: $isOver) {
//                    //EmptyView()
//                }
//            }
//            .padding(.vertical, 200)
//        }
//        .navigationBarBackButtonHidden(true)
//    }
//    
//}
