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
                            ExploreItems(
                                productImage: "frash_fruits",
                                productName: "Frash Fruits & Vegetable",
                                backgroundColor: .blue.opacity(0.1)
                            )
                            .padding(.trailing,-25)
                            
                            ExploreItems(productImage: "cooking_oil", productName: "Cooking Oil & Ghee",
                                         backgroundColor:  .pink.opacity(0.15))
                        }
                        .padding(.bottom,-25)
                        
                        HStack{
                            ExploreItems(productImage: "meat_fish", productName: "Meat & Fish",
                                         backgroundColor: .green.opacity(0.15))
                                .padding(.trailing,-25)
                            
                            ExploreItems(productImage: "bakery_snacks", productName: "Bakery & Snacks",
                                         backgroundColor: .orange.opacity(0.15))
                        }
                        .padding(.bottom,-25)
                        
                        HStack{
                            NavigationLink(destination: EggView()){
                                ExploreItems(productImage: "dairy_eggs", productName: "Dairy & Eggs",
                                             backgroundColor: .purple.opacity(0.15))
                                    .padding(.trailing,-25)
                            }
                            
                            NavigationLink(destination: BeveragesView()){
                                ExploreItems(productImage: "beverages", productName: "Beverages",
                                             backgroundColor: .red .opacity(0.15))
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
