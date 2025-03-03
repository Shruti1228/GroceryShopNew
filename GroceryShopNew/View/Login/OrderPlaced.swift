//
//  OrderPlaced.swift
//  GroceryShopNew
//
//  Created by student on 19/02/25.
//

import SwiftUI

struct OrderPlaced: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Image("bottom_bg")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width:400, height:400)
                
                VStack{
                    Image("order_accpeted")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200, height:200)
                        .padding(.trailing,30)
                        .padding(.bottom,35)
                        .fontWeight(.bold)
                    
                    Text("Your Order has been\n accepted")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.bottom,20)
                    
                    Text("Your items has been placed and is on\n it's way to being processed")
                        .multilineTextAlignment(.center)
                        .padding(.bottom,40)
                        .foregroundColor(.black.opacity(0.5))
                    
                    Button(action: {}, label: {
                        Text("Track order")
                    })
                    .frame(maxWidth: .infinity , minHeight: 60)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(40)
                    .padding(.horizontal,20)
                    .padding(.top,100)
                    
                    NavigationLink(destination: MainTabView()) {
                        Text("Back to home")
                    }
                    .foregroundColor(.blue)
                    .padding(.horizontal,20)
                    .padding(.top,10)
                }
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .padding()
        }
    }
}
#Preview {
    OrderPlaced()
}
