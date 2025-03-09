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
            .frame(width:145, height:48)
            .overlay(
                Text("Added to cart")
                    .font(Font.custom("Gilroy-SemiBold", size:18))
                    .foregroundColor(.white)
        )
            .background(Color(red: 0.2, green: 0.5, blue: 0.6))
            .cornerRadius(10)
    }
}

#Preview {
    AddedToCartView()
}
