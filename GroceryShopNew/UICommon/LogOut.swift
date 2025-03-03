//
//  LogOut.swift
//  GroceryShopNew
//
//  Created by student on 01/03/25.
//

import SwiftUI

struct LogOut: View {
    var body: some View {
        NavigationStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                .frame(width: 270, height: 120)
                .overlay(
                    VStack{
                        Text("Log Out")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.bottom,8)
                            .padding(.top,10)
                        
                        Text("Are you sure you want to log out ?")
                            .foregroundColor(.black.opacity(0.9))
                            .font(Font.custom("Gilroy-Regular", size:15))
                            
                        
                        Divider()
                            .padding(.top,10)
                        
                        HStack{
                            NavigationLink(destination: AccountView()){
                                Text("Cancel")
                                    .foregroundColor(.blue)
                                    .padding(.trailing,30)
                            }
                            
                            Divider()
                               
                            NavigationLink(destination: LoginView()){
                                Text("Log Out")
                                    .foregroundColor(.blue)
                                    .padding(.leading,30)
                            }
                        }
                        
                    }
                )
            }
        }
    }


#Preview {
    LogOut()
}
