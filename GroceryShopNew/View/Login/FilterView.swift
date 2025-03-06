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
            HStack{
                Image("close")
                    .resizable()
                    .scaledToFit()
                    .frame(width:20, height:20)
                    
                
                Text("Filters")
                    .foregroundColor(.black)
                    .font(Font.custom("Gilroy-SemiBold", size: 20))
            }
            .padding(.bottom,19)
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white.opacity(0.4), lineWidth: 1)
                .frame(width:380, height:650)
                .background(Color.gray.opacity(0.1))
                .overlay(
                    VStack{
                        Text("Categories")
                            .foregroundColor(.black)
                            .font(Font.custom("Gilroy-SemiBold",  size:25))
                        
                        HStack{
                            Image("checkbox")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30, height:30)
                            
                            Text("Eggs")
                            foregroundColor(.black)
                            .font(Font.custom("Gilroy-Regular",  size:15))
                        }
                            
                    }
                )
                .cornerRadius(20)
        }
    }
}

#Preview {
    FilterView()
}
