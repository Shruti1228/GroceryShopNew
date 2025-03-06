//
//  BeveragesView.swift
//  GroceryShopNew
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct BeveragesView: View {
    var body: some View {
        NavigationStack{
            HStack{
                NavigationLink(destination: ExploreView()){
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                        .padding(.trailing,88)
                }
                
                Text("Beverages")
                    .font(Font.custom("Gilroy-SemiBold", size: 25))
                    .padding(.trailing,88)
                
                NavigationLink(destination: FilterView()){
                    Image("filter_ic")
                        .resizable()
                        .scaledToFit()
                        .frame(width:20, height:20)
                }
            }
            
            ScrollView{
                VStack{
                    HStack{
                        BeveragesItemView(productImage: "diet_coke", productName: "Diet Coke", description: "33mml, Price", productPrice: "$1.50")
                        
                        BeveragesItemView(productImage: "sprite_can", productName: "Sprite Can", description: "355ml, Price", productPrice: "$1.99")
                    }
                    
                    HStack{
                        BeveragesItemView(productImage: "juice_apple_grape", productName: "Apple & Graphs Juice", description: "2L, Price", productPrice: "$1.99")
                        
                        BeveragesItemView(productImage: "orenge_juice", productName: "Orange Juice", description: "2L, Price", productPrice: "$1.99")
                    }
                    
                    HStack{
                        BeveragesItemView(productImage: "pepsi_can", productName: "Pepsi Can", description: "330ml, Price", productPrice: "$1.99")
                        
                        BeveragesItemView(productImage: "cocacola_can", productName: "Coca Cola Can", description: "330ml, Price", productPrice: "$4.99")
                    }
                }
                .padding(.top,10)
            }
        }
    }
}
#Preview {
    BeveragesView()
}
