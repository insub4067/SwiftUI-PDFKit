//
//  ContentView.swift
//  test
//
//  Created by insub on 2023/05/02.
//

import SwiftUI
import PDFKit

struct ContentView: View {
    
    let urlString = "https://www.africau.edu/images/default/sample.pdf"
    
    var body: some View {
        PDFWeb(urlString)
    }
}

struct PDFWeb: UIViewRepresentable {

    let urlString: String
    
    init(_ urlString: String) { self.urlString = urlString }
    
    func makeUIView(context: Context) -> PDFView {
        guard let url = URL(string: self.urlString) else { return PDFView() }
        let pdfView = PDFView()
        pdfView.autoScales = true
        pdfView.displayMode = .singlePageContinuous
        pdfView.displayDirection = .vertical
        pdfView.document = PDFDocument(url: url)
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {
        
    }
}
