//
//  PDFKitRepresentedView.swift
//  PDFKit+SwiftUI
//
//  Created by Vasichko Anna on 05.06.2023.
//

import PDFKit
import SwiftUI

struct PDFKitRepresentatedView: UIViewRepresentable {
    
    let documentURL: URL
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: documentURL)
        pdfView.autoScales = true
        setThumbnailView(pdfView)
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {
        
    }
    
    private func setThumbnailView(_ pdfView:PDFView) {
        let thumbnailView = PDFThumbnailView()
        thumbnailView.translatesAutoresizingMaskIntoConstraints = false
        pdfView.addSubview(thumbnailView)
        
        
        NSLayoutConstraint.activate(
            [
                thumbnailView.leadingAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.leadingAnchor),
                thumbnailView.trailingAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.trailingAnchor),
                thumbnailView.bottomAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.bottomAnchor),
                thumbnailView.bottomAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.bottomAnchor),
                thumbnailView.heightAnchor.constraint(equalToConstant: 60)
            ]
        )
        
        thumbnailView.thumbnailSize = CGSize(width: 50, height: 60)
        thumbnailView.layoutMode = .horizontal
        thumbnailView.pdfView = pdfView
    }
}
