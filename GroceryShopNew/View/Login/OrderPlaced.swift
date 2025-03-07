//
//  testing .swift
//  GroceryShopNew
//
//  Created by student on 07/03/25.
//

import SwiftUI

struct OrderPlaced: View {
    // State variable to control the scale of the image
    @State private var scale: CGFloat = 0.1

    var body: some View {
        NavigationStack {
            ZStack {
                Image("bottom_bg")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width: 400, height: 400)
                
                VStack {
                    Image("order_accpeted")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.trailing, 30)
                        .padding(.bottom, 35)
                        .fontWeight(.bold)
                        // Applying the scale effect to animate the image size
                        .scaleEffect(scale)
                        .onAppear {
                            // Triggering the animation when the view appears
                            withAnimation(.easeInOut(duration: 1.0)) {
                                scale = 1.0
                            }
                        }
                    
                    Text("Your Order has been\n accepted")
                        .font(Font.custom("Gilroy-SemiBold", size:30))
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.bottom, 20)
                       
                    Text("Your items have been placed and are on\n their way to being processed")
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40)
                        .foregroundColor(.black.opacity(0.5))
                    
                    Button(action: {}, label: {
                        Text("Track order")
                    })
                    .frame(maxWidth: .infinity , minHeight: 60)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(20)
                    .padding(.horizontal, 20)
                    .padding(.top, 100)
                    
                    NavigationLink(destination: MainTabView()) {
                        Text("Back to home")
                    }
                    .foregroundColor(.blue)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                }
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .padding()
        }
    }
}

#Preview {
    OrderPlaced()
}
