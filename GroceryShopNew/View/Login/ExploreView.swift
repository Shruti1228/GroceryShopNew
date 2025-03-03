//
//  ExploreView.swift
//  GroceryShopNew
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Find Products")
                    .font(Font.custom("Gilroy-SemiBold", size: 20))
                
                SearchTextField(searchText: .constant(""), placeholder: "Search products")
                    .padding(.horizontal,20)
                    .padding(.top,10)
                
                ScrollView{
                    VStack{
                        HStack{
                            ExploreItems(productImage: "frash_fruits", productName: "Frash Fruits & Vegetables")
                                .padding(.trailing,-25)
                            
                            ExploreItems(productImage: "cooking_oil", productName: "Cooking Oil & Ghee")
                        }
                        .padding(.bottom,-25)
                        
                        HStack{
                            ExploreItems(productImage: "meat_fish", productName: "Meat & Fish")
                                .padding(.trailing,-25)
                            
                            ExploreItems(productImage: "bakery_snacks", productName: "Bakery & Snacks")
                        }
                        .padding(.bottom,-25)
                        
                        HStack{
                            NavigationLink(destination: EggView()){
                                ExploreItems(productImage: "dairy_eggs", productName: "Dairy & Eggs")
                                    .padding(.trailing,-25)
                            }
                            NavigationLink(destination: BeveragesView()){
                                ExploreItems(productImage: "beverages", productName: "Beverages")
                            }
                        }
                        
                    }
                }
                .padding(.horizontal,20)
            }
        }
    }
}
#Preview {
    ExploreView()
}
