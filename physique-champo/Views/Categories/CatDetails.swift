import SwiftUI

struct CatDetails: View {
    var body: some View {
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
        .background(Color(.systemGray6))
        .navigationBarTitle("Cours")
    }
        
}

#Preview {
    CatDetails()
}
