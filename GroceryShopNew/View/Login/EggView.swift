//
//  EggView.swift
//  GroceryShopNew
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct EggView: View {
    var body: some View {
        NavigationStack{
            HStack{
                SearchTextField(searchText: .constant(""), placeholder: "Search products")
                    .frame(width:330, height:30)
                    .padding(.trailing,6)
                
                Image("filter_ic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height:20)
            }
            .padding(.top,15)
            ScrollView{
                VStack{
                    HStack{
                        ProductItemView(productImage: "egg_chicken_red" , productName: "Egg Chicken Red", description: "4pcs, Price" , productPrice: "$1.99")
                        
                        ProductItemView(productImage: "egg_chicken_white", productName: "Egg Chicken White", description: "180g, Price", productPrice: "$1.50")
                        
                    }
                    
                    HStack{
                        ProductItemView(productImage: "egg_pasta" , productName: "Egg Pasta", description: "30gm, Price" , productPrice: "$15")
                        
                        ProductItemView(productImage: "egg_noodles", productName: "Egg Noodle", description: "2L, Price", productPrice: "$15")
                        
                    }
                    
                    HStack{
                        ProductItemView(productImage: "mayinnars_eggless" , productName: "Mayonnais Eggless", description: "7pcs, Price" , productPrice: "$4.99")
                        
                        ProductItemView(productImage: "egg_noodies_new", productName: "Egg Noodle", description: "1kg, Price", productPrice: "$8.99")
                        
                    }
                }
                .padding(.top,30)
            }
        }
    }
}
#Preview {
    EggView()
}
