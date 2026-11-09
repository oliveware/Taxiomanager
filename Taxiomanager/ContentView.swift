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
    @State var selected = 0
    @State var fonction = Taxion()
    @State var equipement = ""
    var mot = Mot("truc","trucs",.m)

    var body: some View {
        TaxionomyManager($document.taxionomy)
            .frame(width:1000)
    }
}

#Preview {
    ContentView(document: .constant(TaxionomyDocument()))
}
