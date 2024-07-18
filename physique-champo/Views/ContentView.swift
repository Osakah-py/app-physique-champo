//
//  ContentView.swift
//  physique-champo
//
//  Created by Alex Lescot on 12/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
                ScrollView {
                    MainHeader()
                        .edgesIgnoringSafeArea(.horizontal)
                    VStack (alignment: .leading) {
                            Text("Catégories")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.bottom, -5)

                        GeometryReader { gr in
                            CatList()
                                .padding(.horizontal, gr.size.width > 600 ? 50 : 16)
                        }
                    }
                    .padding(.top)
                    
                }
                .background(Color(.systemGray6))
                .edgesIgnoringSafeArea(.top)
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarHidden(true)
                .navigationTitle("Accueil")
        }
    }
        
}

#Preview {
    ContentView()
}
