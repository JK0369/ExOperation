//
//  ViewController.swift
//  ExOperation
//
//  Created by Jake.K on 2021/12/12.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let queue = OperationQueue()

    let fileURL = URL(fileURLWithPath: "..")
    
    let contentImportOperation = ContentImportOperation(itemProvider: NSItemProvider(contentsOf: fileURL)!)
    contentImportOperation.completionBlock = { print("Importing completed!") }

    let contentUploadOperation = ContentUploadOperation(itemProvider: NSItemProvider(contentsOf: fileURL)!)
    contentUploadOperation.addDependency(contentImportOperation)
    contentUploadOperation.completionBlock = { print("Uploading completed!") }

    queue.addOperations([contentUploadOperation, contentImportOperation], waitUntilFinished: true)
  }
}
