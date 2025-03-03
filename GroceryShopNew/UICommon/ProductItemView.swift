import SwiftUI

struct ProductItemView: View {
    @State var productImage: String
    @State var productName: String
    @State var description: String
    @State var productPrice: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
            .frame(width: 165, height: 220)
            .overlay(
                VStack(alignment: .leading) {
                    Image(productImage)  // Display the image passed as a parameter
                        .resizable()
                        .frame(width: 110, height: 90)
                        .padding(.bottom, 15)
                    
                    Text(productName)  // Dynamic product name
                        .font(.system(size: 16, weight: .semibold))
                    
                    Text(description)  // Dynamic description
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text(productPrice)  // Dynamic price
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.top)
                            .foregroundColor(.black)
                        
                        Button(action: {}) {
                            Image("add")  // Ensure this image exists
                                .resizable()
                                .frame(width: 15, height: 15)
                                .padding(7)
                        }
                        .background(Color.primaryApp)  // Assuming primaryApp is blue
                        .cornerRadius(10)
                        .padding(.top)
                        .padding(.leading, 50)
                    }
                }
                .padding()
            )
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(
            productImage: "banana",  // Sample image name, make sure this exists
            productName: "Banana",
            description: "Fresh and ripe bananas",
            productPrice: "$1.99"
        )
    }
}
