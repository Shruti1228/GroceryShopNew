//
//  Order failed.swift
//  GroceryShopNew
//
//  Created by student on 19/02/25.
//

import SwiftUI

struct OrderFailed: View {
    var body: some View {
        NavigationStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                .frame(width:350, height:550)
                .overlay(
                    VStack{
                        
                        Image("close")
                            .resizable()
                            .frame(width:20, height:20)
                            .scaledToFit()
                            .padding(.trailing,290)
                            .padding(.bottom,5)
                        
                        Image("order_fail")
                            .resizable()
                            .frame(width:200 , height: 200)
                            .scaledToFit()
                            .padding(.bottom,40)
                        
                        Text("Oops! Order Failed")
                            .font(Font.custom("Gilroy-SemiBold", size: 30))
                            .foregroundColor(.black)
                        
                        Text("Something went tembly wrong.")
                            .font(Font.custom("Gilroy-Regular", size: 14))
                            .foregroundColor(.black.opacity(0.5))
                            .padding(.top,5)
                        
                        
                        NavigationLink(destination: MyCartView()) {
                            Text("Please try again")
                        }
                        .frame(maxWidth: .infinity , minHeight: 60)
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.6, blue: 0.3))
                        .cornerRadius(19)
                        .padding(.horizontal,20)
                        .padding(.top,45)
                        
                        NavigationLink(destination: MainTabView()){
                            Text("Back to home")
                        }
                        .foregroundColor(.blue)
                        .padding(.top,10)
                        
                        
                    }
                )
        }
    }
}
#Preview {
    OrderFailed()
}
