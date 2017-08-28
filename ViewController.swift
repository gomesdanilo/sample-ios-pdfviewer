//
//  ViewController.swift
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func getSampleFilePath() -> String {
        
        let bundle = Bundle.main
        return bundle.path(forResource: "sample01", ofType: "pdf")!
    }
    
//    func getSampleFilePath() -> String {
//        // Retrieves from documents path.
//        let docsDir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
//        let firstFolder = docsDir.first!
//        return firstFolder.appending("/sample01.pdf")
//    }
    
    
    @IBAction func didClickOnOpenPDF(_ sender: Any) {
        print("didClickOnOpenPDF");
        
        let filePath = getSampleFilePath()
        let vc = PDFViewController(filePath: filePath)!
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

