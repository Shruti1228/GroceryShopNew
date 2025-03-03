//
//  HomeView.swift
//  GroceryShopNew
//
//  Created by student on 19/02/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:35, height:35)
                
                SearchTextField(searchText: .constant(""), placeholder: "Search products")
                    .padding(.horizontal,20)
                
                ScrollView{
                    Image("banner_top")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal,20)
                    
                    HStack{
                        Text("Exclusive Offer")
                            .font(Font.custom("Gilroy-SemiBold", size: 20))
                            .padding(.trailing,170)
                        
                        Button(action: {}, label: {
                            Text("See all")
                        })
                        .foregroundColor(.green)
                        .font(Font.custom("SemiBold", size: 15))
                    }
                    .padding(.top,10)
                    
                    ScrollView{
                        HStack{
                            ProductItemView(productImage: "banana" , productName: "Organic Bananas", description: "7pcs, Priceg" , productPrice: "$4.99")
                            
                            ProductItemView(productImage: "apple_red", productName: "Red Apple", description: "1kg, Priceg ", productPrice: "$4.99")
                            
                        }
                    }
                    
                    ScrollView{
                        HStack{
                            Text("Best Selling")
                                .font(Font.custom("Gilroy-SemiBold", size: 20))
                                .padding(.trailing,170)
                            
                            Button(action: {}, label: {
                                Text("See all")
                            })
                            .foregroundColor(.green)
                            .font(Font.custom("SemiBold", size: 15))
                        }
                    }
                    .padding(.top,10)
                    
                    ScrollView{
                        HStack{
                            ProductItemView(productImage: "bell_pepper_red" , productName: "Bell Pepper Red", description: "5pcs, Priceg" , productPrice: "$4.99")
                            
                            ProductItemView(productImage: "ginger" , productName: "Ginger", description: "10pcs, Priceg" , productPrice: "$4.99")
                        }
                    }
                    
                    ScrollView{
                        HStack{
                            ProductItemView(productImage: "beef_bone" , productName: "Beef Bone", description: "1pcs, Priceg" , productPrice: "$4.99")
                            
                            ProductItemView(productImage: "broiler_chicken" , productName: "Broiler Chicken", description: "1pcs, Priceg" , productPrice: "$4.99")
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
