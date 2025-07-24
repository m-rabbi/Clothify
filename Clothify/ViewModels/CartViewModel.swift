//
//  CartViewModel.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var cartItems = [Product]()
    
    func addItem(item: Product) {
        if !cartItems.contains(item) {
            cartItems.append(item)
        }
    }
}
