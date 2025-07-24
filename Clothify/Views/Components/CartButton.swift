//
//  CartButton.swift
//  Clothify
//
//  Created by Md Rabbi on 7/24/25.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(.black)
            }
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
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
    CartButton(numberOfProducts: 4)
}

