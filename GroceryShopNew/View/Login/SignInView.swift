//
//  logindetail.swift
//  GroceryShop
//
//  Created by student on 16/01/25.
//

import SwiftUI

struct SignInView: View{
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    
    var body: some View{
        NavigationStack{
            ZStack{
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                
                VStack{
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:70, height:70)
                        .padding(.bottom,50)
                    
                    Text("Login")
                        .fontWeight(.bold)
                        .foregroundColor(.primaryText)
                        .font(Font.custom("Gilroy-SemiBold", size: 35))
                        .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal,20)
                    
                    Text("Enter your email and password")
                        .foregroundColor(.secondaryText)
                        .font(Font.custom("Gilroy-Regular", size: 18))
                        .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal,20)
                        .padding(.top,1)
                    
                        .padding(.bottom,60)
                    
                    LineTextField( title: "Email", placholder: "Enter your email address", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                        .padding(.bottom, 30)
                        .padding(.horizontal,20)
                    
                    LineSecureField( title: "Password", placholder: "Enter your password", txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword)
                        .padding(.bottom, 10)
                        .padding(.horizontal,20)
                    
                    Button(action: {}, label: {
                        Text("Forgot Password ?")
                            .foregroundColor(.blue)
                            .font(Font.custom("Gilroy-Regular", size: 18))
                    } )
                    .padding(.leading,200)
                    .padding(.bottom,20)
                    NavigationLink(destination: MainTabView()) {
                        Text("Log In")
                    }
                    .frame(maxWidth: .infinity , minHeight: 60 )
                    .foregroundColor(.white)
                    .background(Color(red: 0.1, green: 0.6, blue: 0.3))
                    .cornerRadius(19)
                    .padding(.horizontal,20)
                    
                    
                    HStack{
                        Text("Don't have an account?")
                            .foregroundColor(.black)
                            .font(Font.custom("Gilroy-Regular", size: 18))
                        
                        NavigationLink(destination: SignUpView()){
                            Text("Sign up")
                                .foregroundColor(.blue)
                                .font(Font.custom("Gilroy-Regular", size: 18))
                        }
                    }
                    .padding(.top,20)
                }
                
                VStack{
                    HStack{
                        NavigationLink{
                            LoginView()
                        } label: {
                            Image("back")
                                .resizable()
                                .scaledToFit()
                                .frame(width:20, height:20)
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.top,60)
                .padding(.horizontal,20)
                
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
}
#Preview {
    SignInView()
}
