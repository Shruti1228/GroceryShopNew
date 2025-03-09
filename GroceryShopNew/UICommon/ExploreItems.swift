//
//  ExploreItems.swift
//  GroceryShopNew
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct ExploreItems: View {
    @State var productImage: String
    @State var productName: String
    let backgroundColor: Color
    
    var body: some View {
        NavigationStack{

                RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black.opacity(0.5), lineWidth: 0.4)
                .background(backgroundColor)
                    .frame(width: 165, height: 190)
                    .overlay(
                        VStack(alignment: .leading) {
                            Image(productImage)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .padding(.bottom, 15)
                            
                            Text(productName)
                                .font(.system(size: 17, weight: .semibold))
                                .padding(.horizontal,10)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                        }
                    )
                    .cornerRadius(15)
                    .padding()
            }
        }
    }

struct ExploreItems_Previews: PreviewProvider {
    static var previews: some View {
        ExploreItems(
            productImage: "frash_fruits",  // Sample image name, make sure this exists
            productName: "Frash Fruits & Vegetable",
            backgroundColor: .blue.opacity(0.2)
        )
    }
}
//ExploreItems(productImage: <#T##String#>, productName: <#T##String#>)



