//
//  PDFDocument.m
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

#import "PDFDocument.h"
//#import <QuartzCore/QuartzCore.h>

@interface PDFDocument()

@property (nonatomic, strong) NSString *filePath;

@end

@implementation PDFDocument

-(instancetype)initWithFilePath:(NSString *)filePath
{
    self = [super init];
    self.filePath = filePath;
    return self;
}

-(void)loadDocument
{
    [self loadDocumentWithFilePath:self.filePath];
}

-(void)loadDocumentWithFilePath:(NSString*)filePath {
    
    if(![[NSFileManager defaultManager] fileExistsAtPath:filePath]){
        NSLog(@"File not found at %@", filePath);
        return;
    }
    
    NSURL *url = [NSURL fileURLWithPath:filePath];
    CFURLRef urlRef = (__bridge CFURLRef)url;
    
    self.documentRef = CGPDFDocumentCreateWithURL(urlRef);
    
    self.numberOfPages = CGPDFDocumentGetNumberOfPages(self.documentRef);
    
    
    
    NSLog(@"%p", self.documentRef);
}

-(void)dealloc
{
    if(self.documentRef != nil){
        CGPDFDocumentRelease(self.documentRef);
    }
}


@end
