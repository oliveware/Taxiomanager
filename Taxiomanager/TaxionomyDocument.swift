//
//  TaxiomanagerDocument.swift
//  Taxiomanager
//
//  Created by Herve Crespel on 06/11/2025.
//

import SwiftUI
import UniformTypeIdentifiers
import Taxionomy

extension UTType {
    static var jsonTaxionomy: UTType {
        UTType(importedAs: "org.inawani.do.taxion")
    }
}

nonisolated struct TaxionomyDocument: FileDocument {
    var taxionomy: Taxionomy

    init () {
        taxionomy = Taxionomy()
    }
    init(_ json:String) {
        taxionomy = Taxionomy(json)
    }

    static let readableContentTypes = [
        UTType(importedAs: "org.inawani.do.taxion")
    ]

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents
               // , let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        taxionomy = try JSONDecoder().decode(Taxionomy.self, from: data)
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let json = try JSONEncoder().encode(taxionomy)
        //let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
}
