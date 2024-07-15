//
//  ContentView.swift
//  physique-champo
//
//  Created by Alex Lescot on 12/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            ZStack {
                Image("Tso_Moriri")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 375)
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
        .edgesIgnoringSafeArea(.top)
    }
        
}

#Preview {
    ContentView()
}
