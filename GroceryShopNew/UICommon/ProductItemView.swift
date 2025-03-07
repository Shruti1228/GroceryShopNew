import SwiftUI

struct ProductItemView: View {
    @State var productImage: String
    @State var productName: String
    @State var description: String
    @State var productPrice: String
    @State private var isFavorited: Bool = false

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
            .frame(width: 165, height: 220)
            .overlay(
                VStack(alignment: .leading) {
                    HStack{
                        Image(productImage)
                            .resizable()
                            .frame(width: 110, height: 90)
                            .padding(.top,25)
                        
                        Button(action: {
                            isFavorited.toggle()
                        }) {
                            Image(systemName: isFavorited ? "heart.fill" : "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(isFavorited ? .red : .gray)
                                .padding(.bottom, 60)
                        }
                    }
                    
                    Text(productName)
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.top,10)
                    
                    Text(description)
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text(productPrice)
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.black)
                        
                        Button(action: {}) {
                            Image("add")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                                .padding(7)
                                
                        }
                        .background(Color.primaryApp)
                        .cornerRadius(10)
                        .padding(.top)
                        .padding(.leading, 60)
                        .padding(.bottom,19)
                    }
                }
            )
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(
            productImage: "banana",
            productName: "Banana",
            description: "Fresh and ripe bananas",
            productPrice: "$1.99"
        )
    }
}





//
//import SwiftUI
//
//struct ProductItemView: View {
//    @State var productImage: String
//    @State var productName: String
//    @State var description: String
//    @State var productPrice: String
//    @State private var isFavorited: Bool = false // Added state to track favorite status
//    
//    var body: some View {
//        RoundedRectangle(cornerRadius: 10)
//            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
//            .frame(width: 165, height: 220)
//            .overlay(
//                VStack(alignment: .leading) {
//                    HStack {
//                        Image(productImage)
//                            .resizable()
//                            .frame(width: 110, height: 90)
//                            .padding(.top, 25)
//                        
//                        // Heart (Favorite) Button with color change
//                        Button(action: {
//                            isFavorited.toggle() // Toggle the favorite state on button click
//                        }) {
//                            Image(systemName: isFavorited ? "heart.fill" : "heart") // Change icon based on isFavorited
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 24, height: 24)
//                                .foregroundColor(isFavorited ? .red : .gray) // Change color to red if favorited, gray if not
//                                .padding(.bottom, 60)
//                        }
//                    }
//                    
//                    // Product name
//                    Text(productName)
//                        .font(.system(size: 16, weight: .semibold))
//                        .padding(.top, 10)
//                    
//                    // Product description
//                    Text(description)
//                        .font(.system(size: 10, weight: .semibold))
//                        .foregroundColor(.gray)
//                    
//                    HStack {
//                        // Product price
//                        Text(productPrice)
//                            .font(.system(size: 16, weight: .semibold))
//                            .foregroundColor(.black)
//                        
//                        // Add to Cart Button
//                        Button(action: {}) {
//                            Image("add")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 15, height: 15)
//                                .padding(7)
//                        }
//                        .background(Color.primaryApp)
//                        .cornerRadius(10)
//                        .padding(.top)
//                        .padding(.leading, 60)
//                        .padding(.bottom, 19)
//                    }
//                }
//            )
//    }
//}
//
//struct ProductItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductItemView(
//            productImage: "banana",
//            productName: "Banana",
//            description: "Fresh and ripe bananas",
//            productPrice: "$1.99"
//        )
//    }
//}
