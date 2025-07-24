//
//  ProductCard.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import SwiftUI

struct ProductCard: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("cloth-1")
                .resizable()
                .scaledToFill()
                .shadow(color: .black.opacity(0.5), radius: 2)
                .frame(width: 180, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 5))


            
            VStack {
                Text("Winter Jacket")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 5)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 40)
                    .background(.thinMaterial)
                    .frame(maxWidth: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
        }
        
    }
}

#Preview {
    ProductCard()
}
