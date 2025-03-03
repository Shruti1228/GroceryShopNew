//
//  trialresting.swift
//  GroceryShopNew
//
//  Created by student on 03/03/25.
//

import SwiftUI

struct trialresting: View {
    @State private var isVisible = false
    var body: some View {
        VStack {
            if isVisible {
                Text("Hello, Sruthi")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .transition(.scale)
            }
            
            Button("click me") {
                withAnimation {
                    isVisible.toggle()
                }}}
    }
}

#Preview {
    trialresting()
}
