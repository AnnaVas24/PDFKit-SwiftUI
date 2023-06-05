//
//  ContentView.swift
//  PDFKit+SwiftUI
//
//  Created by Vasichko Anna on 05.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let url = Bundle.main.url(forResource: "sample", withExtension: "pdf")!
    
    var body: some View {
        VStack {
            Text("Sample PDF")
                .font(.largeTitle)
        PDFKitView(url: url)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
