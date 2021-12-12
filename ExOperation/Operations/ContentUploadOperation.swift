//
//  ContentUploadOperation.swift
//  ExOperation
//
//  Created by Jake.K on 2021/12/12.
//

import Foundation

final class ContentUploadOperation: Operation {

    let itemProvider: NSItemProvider

    init(itemProvider: NSItemProvider) {
        self.itemProvider = itemProvider
        super.init()
    }

    override func main() {
        guard !isCancelled else { return }
        print("(main) Uploading content...")
        
        // .. import the content using the item provider

    }
}
