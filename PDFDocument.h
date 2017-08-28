//
//  PDFDocument.h
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface PDFDocument : NSObject

@property (nonatomic, assign) CGPDFDocumentRef documentRef;
@property (nonatomic, assign) NSInteger numberOfPages;

-(instancetype)initWithFilePath:(NSString*)filePath;
-(void)loadDocument;

@end
