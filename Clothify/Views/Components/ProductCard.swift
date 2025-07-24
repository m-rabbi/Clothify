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
        ZStack(alignment: .bottom) {
            Image(product.imageUrl)
                .resizable()
                .scaledToFill()
                .shadow(color: .black.opacity(0.5), radius: 2)
                .frame(width: 180, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 5))


            
                Text(product.name)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 5)
                    .foregroundStyle(.secondary)
                    .frame(height: 40)
                    .frame(maxWidth: 180, alignment: .leading)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
        }
        
    }
}

#Preview {
    ProductCard(product: DeveloperPreview.products[0])
}
