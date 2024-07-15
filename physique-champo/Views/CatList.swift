//
//  CatList.swift
//  physique-champo
//
//  Created by Alex Lescot on 13/07/2024.
//

import SwiftUI

struct CatList: View {
    var body: some View {
        
        LazyVStack (alignment: .leading) {
                ForEach (categories) { cat in
                    if cat.id != 0 {
                        Divider()
                    }
                    NavigationLink {
                        CatDetails()
                    } label: {
                        CategorieElement(cat: cat)
                    }.id(cat.id)
                }
            }
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
}

#Preview {
    CatList()
}
