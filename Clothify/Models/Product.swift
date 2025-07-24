//
//  Product.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import Foundation

struct Product: Identifiable, Equatable {
    let id = UUID().uuidString
    let name: String
    let imageUrl: String
    let price: Int
}
