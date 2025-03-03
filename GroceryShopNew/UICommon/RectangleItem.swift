//
//  RectangleItem.swift
//  GroceryShopNew
//
//  Created by student on 03/03/25.
//

import SwiftUI

struct RectangleItem: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.orange.opacity(0.2), lineWidth: 0.8)
            .frame(width: 190, height: 80)
            .background(Color.orange.opacity(0.4))
            
            .overlay(
                HStack{
                    Image("pulses")
                        .resizable()
                        .scaledToFit()
                        .frame(width:60, height:60)
                        
                    Text("Pulses")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                }
                    .padding(.trailing,35)
            )
    }
}

#Preview {
    RectangleItem()
}
