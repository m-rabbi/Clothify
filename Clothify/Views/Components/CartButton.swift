//
//  CartButton.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import SwiftUI

struct CartButton: View {
    @EnvironmentObject var cartViewModel: CartViewModel
        
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(.black)
                    .scaleEffect(cartViewModel.cartFlash ? 1.3 : 1.0)
                    .animation(.easeInOut(duration: 0.2), value: cartViewModel.cartFlash)


            }
            
            if cartViewModel.cartItems.count > 0 {
                Text("\(cartViewModel.cartItems.count)")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: 20, height: 20)
                    .background(.red.opacity(0.8))
                    .clipShape(Circle())
            }

        }
    }
}

#Preview {
    CartButton()
        .environmentObject(CartViewModel())
}

