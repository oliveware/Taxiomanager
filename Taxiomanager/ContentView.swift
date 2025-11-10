//
//  ContentView.swift
//  Taxiomanager
//
//  Created by Herve Crespel on 06/11/2025.
//

import SwiftUI
import Taxionomy

struct ContentView: View {
    @Binding var document: TaxionomyDocument

    var body: some View {
        //TextEditor(text: $document.text)
        TaxionomyManager($document.taxionomy)
            .frame(width:1000)
    }
}

#Preview {
    ContentView(document: .constant(TaxionomyDocument()))
}
