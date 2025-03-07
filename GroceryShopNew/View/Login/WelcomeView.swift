//
//  WelcomeView.swift
//  GroceryShopNew
//
//  Created by student on 07/03/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("welcom_bg")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                VStack{
                    
                    Spacer()
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:60, height:60)
                        .padding(.bottom,8)
                    
                    Text("Welcome\n to our store")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(Font.custom("Gilroy-Bold", size:50))
                        .padding(.bottom,5)
                    
                    Text("Get your gloceries as fast as in on our")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 60)
                        .font(Font.custom("Gilroy Regular", size:18))
                        .padding(.bottom, -35)
                    
                    NavigationLink(destination: LoginView()){
                        Text("Get Started")
                            .frame(maxWidth: .infinity, minHeight: 60)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(19)
                            .padding(.bottom,60)
                            .padding(.horizontal,15)
                        
                    }
                    
                }
                .navigationTitle("")
                .navigationBarBackButtonHidden()
                .ignoresSafeArea()
                .navigationBarHidden(true)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
