//
//  HomeView.swift
//  GroceryShopNew
//
//  Created by student on 19/02/25.
//

import SwiftUI

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                
                HStack {
                    Image("location")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Text("Vadodara")
                        .foregroundColor(.black)
                        .font(Font.custom("Gilroy-Semibold", size: 19))
                }
                .padding(.top, 10)
                .padding(.bottom, 5)
                
                SearchTextField(searchText: .constant(""), placeholder: "Search products")
                    .padding(.horizontal, 20)
                
                ScrollView {
                    Image("banner_top")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 20)
                    
                    HStack {
                        Text("Exclusive Offer")
                            .font(Font.custom("Gilroy-SemiBold", size: 20))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button(action: {}, label: {
                            Text("See all")
                        })
                        .foregroundColor(.green)
                        .font(Font.custom("SemiBold", size: 15))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.top, 10)
                    .padding(.horizontal,20)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ProductItemView(productImage: "banana", productName: "Organic Bananas", description: "7pcs, Priceg", productPrice: "$4.99")
                            ProductItemView(productImage: "apple_red", productName: "Red Apple", description: "1kg, Priceg", productPrice: "$4.99")
                            ProductItemView(productImage: "beef_bone", productName: "Beef Bone", description: "1pcs, Priceg", productPrice: "$4.99")
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    HStack {
                        Text("Best Selling")
                            .font(Font.custom("Gilroy-SemiBold", size: 20))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button(action: {}, label: {
                            Text("See all")
                        })
                        .foregroundColor(.green)
                        .font(Font.custom("SemiBold", size: 15))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.top, 10)
                    .padding(.horizontal,20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ProductItemView(productImage: "bell_pepper_red", productName: "Bell Pepper Red", description: "5pcs, Priceg", productPrice: "$4.99")
                            ProductItemView(productImage: "ginger", productName: "Ginger", description: "10pcs, Priceg", productPrice: "$4.99")
                            ProductItemView(productImage: "banana", productName: "Organic Bananas", description: "7pcs, Priceg", productPrice: "$4.99")
                        }
                        .padding(.horizontal, 20)
                    }
            
                    HStack {
                        Text("Groceries")
                            .font(Font.custom("Gilroy-SemiBold", size: 20))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button(action: {}, label: {
                            Text("See all")
                        })
                        .foregroundColor(.green)
                        .font(Font.custom("SemiBold", size: 15))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(.horizontal,20)
                    .padding(.top, 10)
                   
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.orange.opacity(0.5), lineWidth: 0.8)
                                .frame(width: 190, height: 80)
                                .background(Color.orange.opacity(0.2))
                            
                                .overlay(
                                    HStack{
                                        Image("pulses")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:60, height:60)
                                        
                                        Text("Pulses")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                        
                                        
                                    } .padding(.trailing,35)
                                ).cornerRadius(10)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.green.opacity(0.5), lineWidth: 0.8)
                                .frame(width: 190, height: 80)
                                .background(Color.green.opacity(0.2))
                            
                                .overlay(
                                    HStack{
                                        Image("rice")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:60, height:60)
                                        
                                        Text("Rice")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                        
                                        
                                    } .padding(.trailing,35)
                                ).cornerRadius(10)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.red.opacity(0.5), lineWidth: 0.8)
                                .frame(width: 190, height: 80)
                                .background(Color.red.opacity(0.2))
                            
                                .overlay(
                                    HStack{
                                        Image("meat_fish")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:60, height:60)
                                        
                                        Text("Non Veg")
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                        
                                        
                                    } .padding(.trailing,35)
                                ).cornerRadius(10)
                            
                            
                        }
                        .padding(.leading,20)
                        .padding(.bottom,10)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ProductItemView(productImage: "beef_bone", productName: "Beef Bone", description: "1pcs, Priceg", productPrice: "$4.99")
                            ProductItemView(productImage: "broiler_chicken", productName: "Broiler Chicken", description: "1pcs, Priceg", productPrice: "$4.99")
                            ProductItemView(productImage: "apple_red", productName: "Red Apple", description: "1kg, Priceg", productPrice: "$4.99")
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
