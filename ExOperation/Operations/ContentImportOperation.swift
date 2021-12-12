//
//  ContentImportOperation.swift
//  ExOperation
//
//  Created by Jake.K on 2021/12/12.
//

import Foundation

final class ContentImportOperation: Operation {

    let itemProvider: NSItemProvider

    init(itemProvider: NSItemProvider) {
        self.itemProvider = itemProvider
        super.init()
    }

    override func main() {
        guard !isCancelled else { return }
        print("(main) Importing content...")
        
        // .. import the content using the item provider

    }
}
