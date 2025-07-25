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
            VStack {
                if cartViewModel.cartItems.isEmpty {
                    Text("Your cart is empty. Add items to checkout.")
                        .fontWeight(.semibold)
                } else {
                    ForEach(cartViewModel.cartItems) { cartItem in
                        ProductRow(product: cartItem)
                            .environmentObject(cartViewModel)
                            .transition(.move(edge: .trailing))
                        
                    }
                    HStack {
                        Text("Your cart total is")
                        
                        Spacer()
                        
                        Text("\(cartViewModel.cartTotal).00")
                    }
                    .padding()
                }
            }
            .animation(.spring(response: 0.5, dampingFraction: 0.8), value: cartViewModel.cartItems)
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

#Preview {
    NavigationStack {
        CartView()
            .environmentObject(CartViewModel())
    }
}
