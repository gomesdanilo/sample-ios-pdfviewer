//
//  PDFView.h
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PDFDocument.h"

/**
 Renders a PDF in a view. Handy to be used to render 
 pdfs in small portions of the screen.
 */
@interface PDFView : UIView

-(void)renderPDFWithFilePath:(NSString*)filePath;

@end
