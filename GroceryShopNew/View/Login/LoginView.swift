//
//  LoginPage.swift
//  GroceryShop
//
//  Created by student on 11/01/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bottom_bg")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                
                VStack{
                    Image("sign_in_top")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFit()
                    
                    Text("Get your groceries\n with nectar")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing,120)
                        .fontWeight(.bold)
                        .font(Font.custom("Gilroy-Bold", size: 30))
                        .padding(.bottom, 60)
                    
                    
                    
                    NavigationLink{
                        SignInView()
                    } label: {
                        Text("Continue with Sign In")
                            .frame(maxWidth: .infinity , minHeight: 60 )
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(19)
                            .padding(.horizontal,20)
                    }
                    
                    NavigationLink{
                        SignUpView()
                    } label: {
                        Text("Continue with Sign Up")
                            .frame(maxWidth: .infinity , minHeight: 60 )
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(19)
                            .padding(.horizontal,20)
                    }
                    
                    Divider()
                    
                        .padding(.horizontal, 20)
                        .padding(.bottom,28)
                    
                    Text("Or connect with social media")
                        .fontWeight(.light)
                        .font(Font.custom("Gilroy-Regular", size: 20))
                        .padding(.bottom,20)
                    
                    HStack{
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width:50, height:50)
                        
                        
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height:50)
                        
                        
                        Image("apple_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width:50, height:50)
                    }
                }
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
}
#Preview {
    LoginView()
}
