//
//  AccountView.swift
//  GroceryShopNew
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image("u1")
                        .resizable()
                        .scaledToFit()
                        .frame(width:60, height:60)
                    
                    VStack{
                        Text("Shruti Myatra")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.trailing,80)
                            
                        
                        Text("shrutimyatr****@gmail.com")
                            .foregroundColor(.black.opacity(0.5))
                            .padding(.leading,19)
                    }
                }
                .padding(.trailing,60)
                .padding(.bottom,25)
                
                Divider()
                HStack{
                    Image("a_order")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("Orders")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,210)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                HStack{
                    Image("a_my_detail")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("My Details")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,180)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                HStack{
                    Image("a_delivery_address")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("Delivery Address")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,126)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                HStack{
                    Image("a_my_detail")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("Payment Methods")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,110)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                HStack{
                    Image("a_promocode")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("Promo Cord")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,170)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                HStack{
                    Image("a_noitification")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("Notification")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,170)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                HStack{
                    Image("a_help")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("Help")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,234)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                HStack{
                    Image("a_about")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25, height:25)
                    
                    Text("About")
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.leading,10)
                        .padding(.trailing,220)
                    
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                Divider()
                
                NavigationLink(destination: LogOut()){
                    HStack{
                        Image("logout")
                            .resizable()
                            .scaledToFit()
                            .frame(width:20, height:20)
                        
                        Text("Log Out")
                    }
                    
                }
                .frame(maxWidth: .infinity , minHeight: 60)
                .foregroundColor(.green)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(40)
                .padding(.horizontal,20)
                .padding(.top,30)
            }
            .padding(.bottom,35)
        }
    }
}
#Preview {
    AccountView()
}
