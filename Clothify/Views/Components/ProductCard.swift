//
//  ProductCard.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    let product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            // Image & Text
            ZStack(alignment: .bottom) {
                Image(product.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 250)
                
                LinearGradient(
                    colors: [.clear, .black.opacity(0.4)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(product.name)
                        .fontWeight(.bold)
                    
                    
                    Text("$\(product.price)")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.primary)
                .padding(.horizontal, 10)
                .padding(.vertical, 12)
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 20))
                .lineLimit(1)
                
                
                
            }
            .frame(width: 180, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .black.opacity(0.5), radius: 2)
            
            // Add to Cart
            Button {
                withAnimation(.easeInOut(duration: 0.2)){
                    cartViewModel.actionButtonClicked(item: product)
                }
            } label: {
                Image(systemName: cartViewModel.cartItems.contains(product) ? "minus" : "plus")
                    .padding(8)
                    .foregroundStyle(.white)
                    .frame(width: 60, height: 50)
                    .background(.black)
                    .clipShape(Circle()) 
                    .padding(6)
                    .shadow(radius: 5)
            }

            
        }

        
    }
}

#Preview {
    ProductCard(product: DeveloperPreview.products[0])
        .environmentObject(CartViewModel())
}
