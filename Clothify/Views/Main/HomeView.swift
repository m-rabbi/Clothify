//
//  HomeView.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import SwiftUI

struct HomeView: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 180), spacing: 10)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(DeveloperPreview.products) { product in
                        ProductCard(product: product)
                    }
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
