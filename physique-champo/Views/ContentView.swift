//
//  ContentView.swift
//  physique-champo
//
//  Created by Alex Lescot on 12/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            ZStack {
                Color(red: 0.877, green: 0.887, blue: 0.904)
                    .edgesIgnoringSafeArea(.horizontal)
                ScrollView {
                    MainHeader()
                        .edgesIgnoringSafeArea(.horizontal)
                    VStack (alignment: .leading) {
                        Text("Catégories")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .padding(.bottom, -5)
                        CatList()
                            .padding(.horizontal)
                    }
                    .padding(.top)
                    
                }
                .edgesIgnoringSafeArea(.top)
            }.edgesIgnoringSafeArea(.bottom)
                .navigationBarHidden(true)
                .navigationTitle("Accueil")
        } detail: {
            Text("Choisissez une catégorie")
        }
    }
        
}

#Preview {
    ContentView()
}
