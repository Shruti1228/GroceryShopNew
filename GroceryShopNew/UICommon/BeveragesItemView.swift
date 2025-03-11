//
//  BeveragesItemView.swift
//  GroceryShopNew
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct BeveragesItemView: View {
    @State var productImage: String
    @State var productName: String
    @State var description: String
    @State var productPrice: String
    @State private var isFavorited: Bool = false
    
    var body: some View {
        NavigationStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                .frame(width: 165, height: 220)
                .overlay(
                    VStack(alignment: .leading) {
                        HStack{
                            
                            Image(productImage)  // Display the image passed as a parameter
                                .resizable()
                                .frame(width: 50, height: 100)
                                .padding()
                                .padding(.leading,20)
                            
                            Button(action: {
                                isFavorited.toggle()
                            }) {
                                Image(systemName: isFavorited ? "heart.fill" : "heart")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(isFavorited ? .red : .gray)
                                    .padding(.bottom,95)
                            }
                            
                        }
                        Text(productName)  // Dynamic product name
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text(description)  // Dynamic description
                            .font(.system(size: 10, weight: .semibold))
                            .foregroundColor(.gray)
                        
                        HStack {
                            Text(productPrice)  // Dynamic price
                                .font(.system(size: 16, weight: .semibold))
                                .padding(.top,5)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image("add")  // Ensure this image exists
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .padding(7)
                            }
                            .background(Color.primaryApp)  // Assuming primaryApp is blue
                            .cornerRadius(10)
                            .padding(.leading,50)
                        }
                    }
                        .padding()
                )
        }
    }
}
struct BeveragesItemView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesItemView(
            productImage: "diet_coke",  // Sample image name, make sure this exists
            productName: "Diet Coke",
            description: "355ml, Price",
            productPrice: "$1.99"
        )
    }
}



