//
//  PDFView.m
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

#import "PDFView.h"

@interface PDFView()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) PDFDocument *document;

@end

@implementation PDFView


-(void)renderPDF:(PDFDocument *)document
{
    if(self.imageView == nil){
        self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.imageView];
    }
    
    self.document = document;
    
    CGPDFPageRef pageRef = CGPDFDocumentGetPage(self.document.documentRef, 1);
    CGRect cropBox = CGPDFPageGetBoxRect(pageRef, kCGPDFCropBox);
    
    UIGraphicsBeginImageContext(cropBox.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextTranslateCTM(context, 0, cropBox.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextDrawPDFPage(context, pageRef);
    
    UIImage *pdfImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self.imageView setImage:pdfImage];
}

@end
