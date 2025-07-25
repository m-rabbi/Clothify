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
    
    func actionButtonClicked(item: Product) {
        if let index = cartItems.firstIndex(of: item) {
            cartItems.remove(at: index)
            
            withAnimation(.easeInOut(duration: 0.2)) {
                cartScale = 0.8
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.easeInOut(duration: 0.2)) {
                    self.cartScale = 1
                }
            }
        } else {
            cartItems.append(item)
            
            withAnimation(.easeInOut(duration: 0.2)) {
                cartScale = 1.3
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.easeInOut(duration: 0.2)) {
                    self.cartScale = 1
                }
            }
        }
        
    }
}
