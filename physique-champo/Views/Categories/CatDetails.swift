import SwiftUI

struct CatDetails: View {
    var body: some View {
        ZStack {
            Color(red: 0.877, green: 0.887, blue: 0.904)
                .edgesIgnoringSafeArea(.horizontal)
                .edgesIgnoringSafeArea(.vertical)
        ScrollView {
                ForEach (documents) {doc in
                    if doc.id != documents[0].id {
                        Divider()
                    }
                    DocumentElement(doc: doc)
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .padding()
            }
        }
        .navigationBarTitle("Cours")
    }
        
}

#Preview {
    CatDetails()
}
