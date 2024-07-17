//
//  Test.swift
//  physique-champo
//
//  Created by Alex Lescot on 17/07/2024.
//

import SwiftUI

struct Test: View {
        var body: some View {
            NavigationStack {
                List(documents) { doc in
                    NavigationLink(destination: CatDetails()) {
                        Text(doc.title)
                    }
                }
                .navigationTitle("Documents")
            }
        }
}

#Preview {
    Test()
}


