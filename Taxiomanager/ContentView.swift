//
//  ContentView.swift
//  Taxiomanager
//
//  Created by Herve Crespel on 06/11/2025.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: TaxiomanagerDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(TaxiomanagerDocument()))
}
