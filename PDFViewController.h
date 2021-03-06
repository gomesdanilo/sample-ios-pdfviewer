//
//  PDFViewController.h
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 Renders a single page pdf. Represents a screen/viewcontroller.
 */
@interface PDFViewController : UIViewController

-(instancetype)initWithFilePath:(NSString*)filePath;

@end
