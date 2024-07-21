//
//  CatSquare.swift
//  physique-champo
//
//  Created by Alex Lescot on 21/07/2024.
//

import SwiftUI

struct CatSquare: View {
    var cat : Categorie
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: cat.icon)
                .resizable()
                .frame(width:50 ,height: 50)
                Text(cat.name)
                Text("\(cat.size)")
                    .foregroundStyle(.secondary)
        }
        .frame(width: 140, height: 150, alignment: .leading)
        .padding(.leading)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    
    ZStack {
        Color(.systemGray6)
        CatSquare(cat: categories[1])
            
    }
        
}

