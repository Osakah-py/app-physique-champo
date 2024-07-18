//
//  FIlesElement.swift
//  physique-champo
//
//  Created by Alex Lescot on 17/07/2024.
//

import SwiftUI

struct DocumentElement: View {
    
    var doc : Document
    
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button (action:  {
                withAnimation {
                    showDetails.toggle()
                }
            })  {
                     HStack {
                         Text("1")
                             .foregroundStyle(.secondary)
                         Text(doc.title)
                         Spacer()
                    Label("Voir les fichiers", systemImage: "chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetails ? -90 : 90))
                }
            }
            .buttonStyle(PlainButtonStyle())
            if showDetails {
                        Divider()
                        
                        HStack {
                            Spacer()
                            ForEach (doc.fichiersArray, id: \.self) { f in
                                NavigationLink {
                                    PdfReader(name: f)
                                } label: {
                                    VStack {
                                        Image("pdf_icon")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                        Text(f)
                                            .foregroundColor(.primary)
                                    }
                                }
                                Spacer()
                            }
                        }
                        .transition(.slide)
                    }
                }
    }
}

#Preview {
    DocumentElement(doc: documents[0])
}
