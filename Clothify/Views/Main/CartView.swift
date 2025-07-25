//
//  CartView.swift
//  Clothify
//
//  Created by Md Rabbi on 7/25/25.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartViewModel: CartViewModel
    
    var body: some View {
        ScrollView {
            ForEach(cartViewModel.cartItems) { cartItem in
                ProductRow(product: cartItem)
                    .environmentObject(cartViewModel)
                    .transition(.move(edge: .trailing))
            }
            .animation(.spring(response: 0.5, dampingFraction: 0.8), value: cartViewModel.cartItems)
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartViewModel())
}
