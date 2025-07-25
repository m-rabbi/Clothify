//
//  ProductRow.swift
//  Clothify
//
//  Created by Md Rabbi on 7/25/25.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    let product: Product
    
    var body: some View {
        HStack {
            Image(product.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black.opacity(0.3),radius: 5)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("$\(product.price)")
                
            }
            
            Spacer()
            
            Button {
                if let index = cartViewModel.cartItems.firstIndex(of: product) {
                        cartViewModel.cartItems.remove(at: index)
                }
            } label: {
                Image(systemName: "trash")
                    .imageScale(.large)
                    .tint(.red)
                    .padding()
            }

        }
        .padding(.leading)
    }
}

#Preview {
    NavigationStack {
        ProductRow(product: DeveloperPreview.products[4])
            .environmentObject(CartViewModel())
    }
}
