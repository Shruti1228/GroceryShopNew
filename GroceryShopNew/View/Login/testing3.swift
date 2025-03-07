//
//  testing3.swift
//  GroceryShopNew
//
//  Created by student on 07/03/25.
//
import SwiftUI

struct testing3: View {
    // State variables to control the logo's bounce animation
    @State private var offsetY: CGFloat = 50 // Initial offset for bouncing
    @State private var opacity: Double = 0.0 // Start with opacity 0 (invisible)
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("bottom_bg")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .frame(width: 400, height: 400)
                
                VStack{
                    // Animated logo with bounce effect
                    Image("order_accpeted")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.trailing, 30)
                        .padding(.bottom, 35)
                        .fontWeight(.bold)
                        .offset(y: offsetY) // Apply offset to move the logo vertically
                        .opacity(opacity)  // Apply fade-in effect
                        .onAppear {
                            // Apply the bounce effect when the view appears
                            withAnimation(
                                .spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.5)
                            ) {
                                // First bounce movement
                                offsetY = 0 // Settle at the final vertical position
                                opacity = 1.0 // Fade in the logo
                            }
                            
                            // Additional bounce effect
                            withAnimation(
                                .spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0.3).delay(0.5)
                            ) {
                                offsetY = -10 // Slight upward movement
                            }
                            
                            withAnimation(
                                .spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0.3).delay(1.0)
                            ) {
                                offsetY = 0 // Settle back to original position
                            }
                        }
                    
                    // Title text
                    Text("Your Order has been\n accepted")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.bottom, 20)
                    
                    // Additional description text
                    Text("Your items has been placed and is on\n it's way to being processed")
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40)
                        .foregroundColor(.black.opacity(0.5))
                    
                    // Track Order Button
                    Button(action: {}, label: {
                        Text("Track order")
                    })
                    .frame(maxWidth: .infinity , minHeight: 60)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(20)
                    .padding(.horizontal, 20)
                    .padding(.top, 100)
                    
                    // Back to Home Navigation Link
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
   testing3()
}
