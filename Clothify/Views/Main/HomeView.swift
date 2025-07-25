//
//  HomeView.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var cartViewModel = CartViewModel()
    
    let columns = [
        GridItem(.adaptive(minimum: 180), spacing: 5)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(DeveloperPreview.products) { product in
                        ProductCard(product: product)
                            .environmentObject(cartViewModel) 
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Clothify")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        CartView()
                            .environmentObject(cartViewModel)
                    } label: {
                        CartButton()
                            .environmentObject(cartViewModel)
                    }

                }
            }
        }
        .tint(.primary)
    }
}

#Preview {
    HomeView()
}
