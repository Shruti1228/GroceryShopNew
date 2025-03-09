//
//  CheckOutView.swift
//  GroceryShopNew
//
//  Created by student on 06/03/25.
//

import SwiftUI

struct CheckOutView: View {
    var body: some View {
        NavigationStack{
            RoundedRectangle(cornerRadius:35)
                .stroke(Color.white.opacity(0.5), lineWidth:0.6)
                .frame(width:400, height:580)
                .background(Color.gray.opacity(0.1))
                .overlay(
                    VStack{
                        HStack{
                            Text("Checkout")
                                .font(Font.custom("Gilroy-SemiBold", size:25))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Image("close")
                                .resizable()
                                .scaledToFit()
                                .frame(width:20, height:20)
                        }
                        .padding(.bottom,20)
                        
                        Divider()
                        
                        HStack{
                            Text("Delivery")
                                .foregroundColor(.black.opacity(0.4))
                                .font(Font.custom("Gilroy-Regular", size:20))
                                
                            Spacer()
                            
                            Text("Select Method")
                                .foregroundColor(.black)
                                .font(Font.custom("Girlroy-Regular", size:20))
                            
                            Image("blacknext")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30, height:30)
                        }
                        .padding(.bottom,7)
                        .padding(.top,7)
                        
                        Divider()
                        
                        HStack{
                            Text("Payment")
                                .foregroundColor(.black.opacity(0.5))
                                .font(Font.custom("Gilroy-Regular", size:20))
                            
                            Spacer()
                            
                            Image("master")
                                .resizable()
                                .scaledToFit()
                                .frame(width:27, height:27)
                            
                            Image("blacknext")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30, height:30)
                        }
                        .padding(.bottom,7)
                        .padding(.top,7)
                        
                        Divider()
                        
                        HStack{
                            Text("Promo Code")
                                .foregroundColor(.black.opacity(0.5))
                                .font(Font.custom("Gilroy-Regular", size:20))
                            
                            Spacer()
                            
                            Text("Pick discount")
                                .foregroundColor(.black)
                                .font(Font.custom("Girlroy-Regular", size:20))
                            
                            Image("blacknext")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30, height:30)
                        }
                        .padding(.bottom,7)
                        .padding(.top,7)
                        
                        Divider()
                        
                        HStack{
                            Text("Total Cost")
                                .foregroundColor(.black.opacity(0.5))
                                .font(Font.custom("Gilroy-Regular", size:20))
                            
                            Spacer()
                            
                            Image("blacknext")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30, height:30)
                        }
                        .padding(.bottom,7)
                        .padding(.top,7)
                        
                        Divider()
                        
                        VStack{
                            Text("By placing order you agree to our")
                                .foregroundColor(.black.opacity(0.5))
                                .font(Font.custom("Gilroy-Regular", size: 14))
                            
                            HStack{
                                Button(action: {}, label:{
                                    Text("Terms")
                                })
                                .foregroundColor(.green)
                                .font(Font.custom("Gilroy-Regular", size:14))
                                
                                Text("and")
                                    .foregroundColor(.black.opacity(0.5))
                                    .font(Font.custom("Gilroy-Regular", size: 14))
                                
                                Button(action: {}, label:{
                                    Text("Conditions")
                                })
                                .foregroundColor(.green)
                                .font(Font.custom("Gilroy-Regular", size:14))
                            }
                            .padding(.trailing,65)
                        }
                        .padding(.trailing,145)
                        .padding(.top)
                        .padding(.bottom)
                        
                        NavigationLink(destination: OrderPlaced()){
                            Text("Place Order")
                                .frame(maxWidth: .infinity, minHeight: 60)
                                .foregroundColor(.white)
                                .background(Color(red: 0.1, green: 0.6, blue: 0.3))
                                .cornerRadius(19)
                                .padding(.bottom,60)
                                .padding(.horizontal,15)
                            
                        }
                       
                    }
                        .padding(.horizontal,20)
                )
                .cornerRadius(35)
                .padding(.top,390)
        }
    }
}

#Preview {
    CheckOutView()
}
