//
//  ViewController.swift
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func getSampleFilePathFromBundle() -> String {
        let bundle = Bundle.main
        return bundle.path(forResource: "sample01", ofType: "pdf")!
    }
    
    @IBAction func didClickOnOpenPDF(_ sender: Any) {
        let filePath = getSampleFilePathFromBundle()
        let vc = PDFViewController(filePath: filePath)!
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

