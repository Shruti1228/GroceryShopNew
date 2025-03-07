//
//  AddedToCartView.swift
//  GroceryShopNew
//
//  Created by student on 07/03/25.
//

import SwiftUI

struct AddedToCartView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.black.opacity(0.5), lineWidth:0.8)
            .frame(width:150, height:50)
            .overlay(
                Text("Added to cart")
                    .font(Font.custom("Gilroy-SemiBold", size:19))
                    
        )
    }
}

#Preview {
    AddedToCartView()
}
