//
//  TaxiomanagerApp.swift
//  Taxiomanager
//
//  Created by Herve Crespel on 06/11/2025.
//

import SwiftUI

@main
struct TaxiomanagerApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: TaxionomyDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
