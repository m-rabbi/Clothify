//
//  CartViewModel.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import Foundation
import SwiftUI

class CartViewModel: ObservableObject {
    @Published var cartItems = [Product]()
    @Published var cartScale: CGFloat = 1.0            // cart icon animation
    
    let animationDuration = 0.3
    var cartTotal: Int {
        cartItems.reduce(0) { $0 + $1.price}
    }
    
    
    func actionButtonClicked(item: Product) {
        if let index = cartItems.firstIndex(of: item) {
            cartItems.remove(at: index)
            cartScale = 0.7
            
            DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration) {
                self.cartScale = 1
            }
        } else {
            cartItems.append(item)
            cartScale = 1.3
            
            DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration) {
                self.cartScale = 1
            }
        }
    }
}
