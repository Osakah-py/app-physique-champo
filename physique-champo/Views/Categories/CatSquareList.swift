//
//  CatList.swift
//  physique-champo
//
//  Created by Alex Lescot on 13/07/2024.
//

import SwiftUI

struct CatSquareList: View {
    
    var body: some View {
        GeometryReader { geometry in
            let columns = [GridItem](repeating: GridItem(.fixed(170)), count: Int(geometry.size.width / 170))
            
            LazyVGrid (columns: columns, spacing: 15) {
                ForEach (categories) { cat in
                    NavigationLink {
                        CatDetails()
                    } label: {
                        CatSquare(cat: cat)
                    }.id(cat.id)
                        .buttonStyle(PlainButtonStyle())
                }
            }
            //.padding(16)
            .background(Color(.systemGray6))
            //.cornerRadius(10)
        }
    }
}

#Preview {
    CatSquareList()
}
