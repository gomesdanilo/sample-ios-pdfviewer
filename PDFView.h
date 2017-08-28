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

@interface PDFView : UIView

-(void)renderPDF:(PDFDocument*)document;

@end
