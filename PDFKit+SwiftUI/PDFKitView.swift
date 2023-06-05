//
//  SwiftUIView.swift
//  PDFKit+SwiftUI
//
//  Created by Vasichko Anna on 05.06.2023.
//

import SwiftUI

struct PDFKitView: View {
    let url: URL
    
    var body: some View {
        PDFKitRepresentatedView(documentURL: url)
    }
}

