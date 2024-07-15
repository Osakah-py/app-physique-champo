//
//  MainHeader.swift
//  physique-champo
//
//  Created by Alex Lescot on 13/07/2024.
//

import SwiftUI

struct MainHeader: View {
    @State private var headerHeight: CGFloat = 400
    
    var body: some View {
        ZStack {
                Image("Tso_Moriri")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .clipped()
                        
                Text("MP2I CHAMPO")
                    .font(.largeTitle.bold())
                    .fontWeight(.light)
                    .kerning(4)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    
}

#Preview {
    MainHeader()
}
