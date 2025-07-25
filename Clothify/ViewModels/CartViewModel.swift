//
//  CartViewModel.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var cartItems = [Product]()
    @Published var cartFlash = false            // cart icon animation
    
    func actionButtonClicked(item: Product) {
        if let index = cartItems.firstIndex(of: item) {
            cartItems.remove(at: index)
        } else {
            cartItems.append(item)
            
            cartFlash = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.cartFlash = false
            }
        }
        
    }
}
