//
//  FilterView.swift
//  GroceryShopNew
//
//  Created by student on 06/03/25.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image("close")
                        .resizable()
                        .scaledToFit()
                        .frame(width:22, height:22)
                        .padding(.leading)
                        
                    Spacer()
                    
                    Text("Filters")
                        .font(Font.custom("Gilroy-Bold", size:25))
                        .foregroundColor(.black)
                        .padding(.trailing,163)
                }
                .padding(.bottom,25)
                
                    RoundedRectangle(cornerRadius:15)
                    .stroke(Color.gray.opacity(0.5), lineWidth:0.8)
                    .frame(width:380, height:650)
                    .background(Color.gray.opacity(0.2))
                    
                    .overlay(
                        
                        VStack(alignment: .leading){
                            Text("Categories")
                                .foregroundColor(.black)
                                .font(Font.custom("Gilroy-SemiBold", size:25))
                                .padding(.bottom,20)
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Eggs")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            .padding(.bottom,8)
                            
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Noodles & Pasta")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            .padding(.bottom,8)
                            
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Chips & Crips")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            .padding(.bottom,8)
                            
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Fast Food")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            
                            
                            Text("Brand")
                                .foregroundColor(.black)
                                .font(Font.custom("Gilroy-SemiBold", size:25))
                                .padding(.bottom,20)
                                .padding(.top,20)
                            
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Individual Collection")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            .padding(.bottom,8)
                            
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Cocola")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            .padding(.bottom,8)
                            
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Ifad")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            .padding(.bottom,8)
                            
                            HStack{
                                Image("checkbox")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25, height:25)
                                
                                Text("Kazi Farmas")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Gilroy-Regular", size:20))
                            }
                            
                            
                            Text("Apply Filter")
                                .frame(maxWidth: .infinity, minHeight: 60)
                                .foregroundColor(.white)
                                .background(Color.green)
                                .cornerRadius(15)
                                .padding(.top,90)
                            
                        }
                            .padding(.horizontal,20)
                            
                    )
                    .cornerRadius(15)
                    .padding(.bottom,35)
                    
            }
        }
    }
}
#Preview {
    FilterView()
}
