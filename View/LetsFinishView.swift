//
//  ExplanationView.swift
//  MageretPandan
//
//  Created by I Nyoman Tegar Pramudya
import SwiftUI

@available(iOS 16.0, *)
struct LetsFinish: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("ArenaFase2")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .blur(radius: 16)
                GeometryReader { geometry in
                    ZStack {
                        RoundedRectangle(cornerRadius: 64)
                            .fill(Color("BgRectangle"))
                            .frame(width: geometry.size.width * 1/2, height: geometry.size.height * 0.6)
                            .shadow(radius: 8, y: 8)
                            .position(x:geometry.size.width/2, y:geometry.size.height/2)
                        
                        Image("FinishThis")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(2)
                            .frame(width: 280)
                            .position(x:geometry.size.width/2, y:geometry.size.height/2-130)
                        
                        Text("Now that we have reached the final stage of the fight, the two of you release the shields in your hands and prepare to embrace each other, ready to launch a final attack to end the battle.")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .frame(width: geometry.size.width * 1/3)
                            .position(x:geometry.size.width/2, y:geometry.size.height/2+50)
                    }                    
                    VStack{
                        NavigationLink(destination: Round2View(), label: {
                            Circle()
                                .fill(Color("BgRectangle"))
                                .shadow(radius: 8, y: 8)
                                .frame(width: 244)
                                .overlay {
                                    Text("Let's \n Finish This")
                                        .foregroundColor(.black)
                                        .font(.system(size: 50))
                                        .fontWeight(.bold)
                                }
                                .padding(.trailing, 100)
                                .position(x:geometry.size.width/2+40, y:geometry.size.height/2+260)
                        })
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}
