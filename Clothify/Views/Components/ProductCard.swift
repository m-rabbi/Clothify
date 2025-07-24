//
//  ProductCard.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import SwiftUI

struct ProductCard: View {
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
                print("item \(product.name) added to the cart")
            } label: {
                Image(systemName: "plus")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.black)
                    .clipShape(Circle()) 
                    .padding(8)
            }

            
        }

        
    }
}

#Preview {
    ProductCard(product: DeveloperPreview.products[0])
}
