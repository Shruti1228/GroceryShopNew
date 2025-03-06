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
                .frame(width:400, height:450)
                .background(Color.gray.opacity(0.1))
                .overlay(
                    VStack{
                        HStack{
                            Text("Checkout")
                                .font(Font.custom("Gilroy-SemiBold", size:20))
                                .foregroundColor(.black)
                            
                            Image("close")
                                .resizable()
                                .scaledToFit()
                                .frame(width:20, height:20)
                        }
                        
                        Divider()
                        
                    }
                )
                .cornerRadius(35)
                .padding(.top,390)
        }
    }
}

#Preview {
    CheckOutView()
}
