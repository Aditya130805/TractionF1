//
//  MoreMain.swift
//  Traction
//
//  Created by Aditya Agarwal on 26/08/22.
//

import SwiftUI
import MapKit

class MoreMainPage:UIHostingController<MoreMain>{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: MoreMain())
    }
}

let backgroundImage = Image("background2").resizable()

struct MoreMain: View {

    var body: some View {
        NavigationView{
            ZStack{
                backgroundImage
                ScrollView{
                    VStack(spacing:20){
                        
                        Text("Get involved!")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 25)
                            .padding(.top, 45)
                            .padding(.bottom, 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("YouTube")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 25)
                            .padding(.top, 5)
                            .padding(.bottom, 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        Link (destination: .init(string: "https://www.youtube.com/@WTF1official")!){
                            HStack{
                                Image("wtf1")
                                    .resizable()
                                    .frame(width: 85, height: 85)
                                    .clipShape(Circle())
                                VStack{
                                    Text("WTF1")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(Color(white: 1.0, opacity: 1.0))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .multilineTextAlignment(.leading)
                                        .padding(.vertical, 5)
                                    Text("The F1 and motorsport channel by fans for fans.")
                                        .font(.system(size: 14))
                                        .lineSpacing(1.5)
                                        .foregroundColor(Color(white: 1.0, opacity: 1.0))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .multilineTextAlignment(.leading)
                                }
                                .padding(.horizontal, 20)
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1))
                            .cornerRadius(20)
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                        }
                        
                        
                        
                        
                        
                        Link(destination: .init(string: "https://www.youtube.com/@Aldas001")!){
                            HStack{
                                Image("aldas")
                                    .resizable()
                                    .frame(width: 85, height: 85)
                                    .clipShape(Circle())
                                VStack{
                                    Text("Aldas")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(Color(white: 1.0, opacity: 1.0))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .multilineTextAlignment(.leading)
                                        .padding(.vertical, 5)
                                    Text("Best of explanations and top-quality videos!")
                                        .font(.system(size: 14))
                                        .lineSpacing(1.5)
                                        .foregroundColor(Color(white: 1.0, opacity: 1.0))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .multilineTextAlignment(.leading)
                                }
                                .padding(.horizontal, 20)
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1))
                            .cornerRadius(20)
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                        }
                        //PROBLEM - Can't include otherwise the tab bar color changes to white
                        
                        Link(destination: .init(string: "https://www.youtube.com/@FormulaWorld")!){
                            HStack{
                                Image("formulaWorld")
                                    .resizable()
                                    .frame(width: 85, height: 85)
                                    .clipShape(Circle())
                                VStack{
                                    Text("Formula World")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 5)
                                    Text("Formula World - where you get the latest news in the world of Formula 1.")
                                        .font(.system(size: 14))
                                        .lineSpacing(1.5)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding(.horizontal, 20)
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1))
                            .cornerRadius(20)
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                        }
                        
                        Link(destination: .init(string: "https://www.youtube.com/@WeAreTheRace")!){
                            HStack{
                                Image("theRace")
                                    .resizable()
                                    .frame(width: 85, height: 85)
                                    .clipShape(Circle())
                                VStack{
                                    Text("The Race")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 5)
                                    Text("The Race - Motorsport coverage that cannot be beaten!")
                                        .font(.system(size: 14))
                                        .lineSpacing(1.5)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding(.horizontal, 20)
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1))
                            .cornerRadius(20)
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                        }
                        
                        
                        Text("Instagram")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 25)
                            .padding(.top, 40)
                            .padding(.bottom, 20)
                        
                        Link(destination: .init(string: "https://www.instagram.com/f1/")!){
                            HStack{
                                Image("F1Logo")
                                    .resizable()
                                    .frame(width: 85, height: 85)
                                    .clipShape(Circle())
                                VStack{
                                    Text("Formula 1")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 5)
                                    Text("The official account!")
                                        .font(.system(size: 14))
                                        .lineSpacing(1.5)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding(.horizontal, 20)
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1))
                            .cornerRadius(20)
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                        }
                            
                        Link(destination: .init(string: "https://www.instagram.com/autosport/")!){
                            HStack{
                                Image("autosport")
                                    .resizable()
                                    .frame(width: 85, height: 85)
                                    .clipShape(Circle())
                                VStack{
                                    Text("Autosport")
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 5)
                                    Text("One of the most trustworthy F1 news reporting channels!")
                                        .font(.system(size: 14))
                                        .lineSpacing(1.5)
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding(.horizontal, 20)
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(Color(red: 0.4, green: 0.4, blue: 0.4, opacity: 0.1))
                            .cornerRadius(20)
                            .padding(EdgeInsets(top: 0, leading: 12, bottom: 0, trailing: 12))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                        }
                    }
                    
                    
                    VStack(spacing: 2){
                        Text("Credits")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 25)
                            .padding(.bottom, 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Credit to Formula 1 for all of the data and information. Credit to RacingNews365 for all of the track layouts. Credit to countries-ofthe-world.com for all of the national flags.")
                            .font(.system(size: 15))
                            .lineSpacing(2)
                            .foregroundColor(.white)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 5)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    }
                    .padding(.top, 20)
                    
                    
                    .padding(.vertical, 20)
                    
                    
                }
                .clipped()
                .background(Color(red: 0.094, green: 0.18, blue: 0.251))
                .navigationBarTitle("More")
                .navigationBarHidden(true)
            }
        }
    }
}

struct MoreMain_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            NavigationView{
                MoreMain()
            }
        }
    }
}
