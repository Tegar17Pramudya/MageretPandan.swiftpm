//
//  ExplanationView.swift
//  MageretPandan
//
//  Created by I Nyoman Tegar Pramudya
import SwiftUI

@available(iOS 16.0, *)
struct PrologueView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("BgDaun")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .blur(radius: 16)
                GeometryReader { gr in
                    ScrollView(.horizontal) {
                        HStack(spacing: 32) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 64)
                                    .fill(Color("BgRectangle"))
                                    .frame(width: gr.size.width * 1/2, height: gr.size.height * 0.6)
                                    .shadow(radius: 8, y: 8)
                                VStack {
                                    Text("Mageret Pandan")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .font(.title)
                                    Image("PandanCombat")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 280)
                                    Text("Pandan Battle, also known as Mageret Pandan or Makare-Kare is a Balinese ritual tradition of fighting with sticks made of pandan(Pandanus amaryllifolius). This unique practice is always carried out every year by the Balinese who live in the village of Tenganan, located in Karangasem Regency, Indonesia. The people of Tenganan are devotees of the deity Indra. To honour Indra as a warrior god, many major religious festivals in Tenganan involve a ritualistic battle. \n (By the way, the person in the picture is me)")
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .frame(width: gr.size.width * 1/3)
                                        .offset(y: 28)
                                }
                                .frame(width: gr.size.width * 0.3, height: gr.size.height * 0.5, alignment: .top)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 64)
                                    .fill(Color("BgRectangle"))
                                    .frame(width: gr.size.width * 1/3, height: gr.size.height * 0.6)
                                    .shadow(radius: 8, y: 8)
                                VStack {
                                    Text("Tenganan Dauh Tukad")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .font(.title)
                                    Image("Tenganan")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 245)
                                        .offset(x: 25)
                                    Text("Tenganan Dauh Tukad is a village located in the eastern part of Bali, Indonesia, specifically in the Karangasem regency. It is known for being one of the oldest and most traditional villages in Bali. Tenganan Dauh Tukad is renowned for its unique culture, including the ancient weaving technique known as geringsing, which is passed down from generation to generation. The village is also famous for its annual Perang Pandan festival, which involves ritual combat using pandan leaves, as a tribute to the Hindu god of war, Lord Indra.")
                                }
                                .frame(width: gr.size.width * 0.3, height: gr.size.height * 0.5, alignment: .top)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 64)
                                    .fill(Color("BgRectangle"))
                                    .frame(width: gr.size.width * 1/3, height: gr.size.height * 0.6)
                                    .shadow(radius: 8, y: 8)
                                VStack {
                                    Text("Pandan as Weapon")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .font(.title)
                                    Image("WeaponAndShield")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 230)
                                    Text("In Mageret Pandan, participants use pandan weapons and a shield.")
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .frame(width: gr.size.width * 1/4)
                                        .offset(y: 32)
                                }
                                .frame(width: gr.size.width * 0.3, height: gr.size.height * 0.5, alignment: .top)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 64)
                                    .fill(Color("BgRectangle"))
                                    .frame(width: gr.size.width * 1/3, height: gr.size.height * 0.6)
                                    .shadow(radius: 8, y: 8)
                                VStack {
                                    Text("Traditional Medicine")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .font(.title)
                                    Image("ViewTraditionalMedicine")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 310)
                                    Text("The traditional medicine used in perang pandan is made from natural ingredients such as ginger, turmeric, betel leaves, and coconut, and is applied to the body to reduce pain and promote healing after the ritual combat.")
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .frame(width: gr.size.width * 1/4)
                                        .offset(y: 32)
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .frame(width: gr.size.width * 1/4)
                                        .offset(y: 32)
                                }
                                .frame(width: gr.size.width * 0.3, height: gr.size.height * 0.5, alignment: .top)
                            }
                            NavigationLink(destination: MakeWeaponView(), label: {
                                Rectangle()
                                    .fill(Color("BgRectangle"))
                                    .shadow(radius: 8, y: 8)
                                    .frame(width: 240, height: 240)
                                    .overlay {
                                        Text("GO FIGHT!!")
                                            .foregroundColor(.black)
                                            .font(.system(size: 50))
                                            .fontWeight(.bold)
                                    }
                                    .padding(.trailing, 100)
                            })
                        }
                        .position(x: gr.size.width * 0.92, y: gr.size.height * 1/2)
                    }
                    Text("Swipe for more")
                        .foregroundColor(.black)
                        .position(x: gr.size.width * 1/2, y: gr.size.height * 0.95)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}
