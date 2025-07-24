//
//  CartViewModel.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var cartItems = [Product]()
    
    func actionButtonClicked(item: Product) {
        if let index = cartItems.firstIndex(of: item) {
            cartItems.remove(at: index)
        } else {
            cartItems.append(item)
        }
    }
}
