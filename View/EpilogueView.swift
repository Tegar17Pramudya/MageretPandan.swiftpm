//
//  ExplanationView.swift
//  MageretPandan
//
//  Created by I Nyoman Tegar Pramudya
import SwiftUI

@available(iOS 16.0, *)
struct EpilogueView: View {
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
                        
                        Image("WeAreFamily")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 280)
                            .position(x:geometry.size.width/2, y:geometry.size.height/2-130)
                        
                        Text("Mageret Pandan is a unique tradition practiced in the village of Tenganan Dauh Tukad, where there are fights between two people using pandan leaves as weapons. Although it looks very dangerous because people seem to be attacking and hurting each other, for us, participating in this tradition is a great honor and very enjoyable. This activity is not even felt painful at all, and after the fight is over, whatever the reason, we will always remain close and intimate, because we are a family in the village of Tenganan Dauh Tukad.")
                            .foregroundColor(.black)
                            .font(.system(size: 18))
                            .frame(width: geometry.size.width * 1/3)
                            .position(x:geometry.size.width/2, y:geometry.size.height/2+120)
                    }
                    
                    VStack{
                        NavigationLink(destination: Home(), label: {
                            Circle()
                                .fill(Color("BgRectangle"))
                                .shadow(radius: 8, y: 8)
                                .frame(width: 200)
                                .overlay {
                                    Text("YEY DONE \n Press To -Play Again-")
                                        .foregroundColor(.black)
                                        .font(.system(size: 25))
                                        .fontWeight(.bold)
                                }
                                .padding(.trailing, 100)
                                .position(x:geometry.size.width/2+40, y:geometry.size.height/2+350)
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
