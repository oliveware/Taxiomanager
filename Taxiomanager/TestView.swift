//
//  TestView.swift
//  Taxiomanager
//
//  Created by Herve Crespel on 12/10/2026.
//


import SwiftUI
import Taxionomy

struct TestView: View {
    @Binding var document: TaxionomyDocument
    @State var selected = 0
    @State var fonction = Taxion()
    @State var equipement = ""
    var mot = Mot("equipement","equipements",.m)

    var body: some View {
        TabView (selection:$selected) {
            FonctionPicker($fonction,  {})
                .tabItem{Text("fonction")}.tag(1)
            TidChildrenPicker($equipement, fonction.id, mot, {})
                .tabItem{Text("equipement")}.tag(2)
        }
    }
}

#Preview {
    ContentView(document: .constant(TaxionomyDocument()))
}
