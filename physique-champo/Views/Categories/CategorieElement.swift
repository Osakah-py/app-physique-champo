//
//  CategorieElement.swift
//  physique-champo
//
//  Created by Alex Lescot on 13/07/2024.
//

import SwiftUI

struct CategorieElement: View {
    
    var cat : Categorie
    
    var body: some View {
        HStack {
            Image(systemName: cat.icon)
            Text(cat.name)
            Spacer()
            Text("\(cat.size)")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .foregroundColor(.primary)
    }
}

#Preview {
    CategorieElement(cat: categories[0])
}
