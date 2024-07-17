//
//  PdfReader.swift
//  physique-champo
//
//  Created by Alex Lescot on 17/07/2024.
//

import SwiftUI
import PDFKit

struct PdfReader: View {
    var name : String
    
    //Bundle.main.url(forResource: "sample", withExtension: "pdf")!

    var body: some View {
        let url = URL(string: "https://physique.mp2i-champo.fr/\(name)")!
        
         PDFKitView(url:  url)
            .navigationTitle(name)
    }
}

struct PDFKitView: UIViewRepresentable {
    
    let url: URL
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()

        pdfView.document = PDFDocument(url: self.url)

        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        // Update the view if needed (If you change the pdf)
    }
}

#Preview {
    PdfReader(name: "chap24_intro_quantique_cours.pdf")
}
