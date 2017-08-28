//
//  PDFViewController.m
//  sample-ios-pdfviewer
//
//  Created by Danilo Gomes on 28/08/2017.
//  Copyright © 2017 Danilo Gomes. All rights reserved.
//

#import "PDFViewController.h"
#import "PDFDocument.h"
#import "PDFView.h"

@interface PDFViewController()
@property (nonatomic, strong) PDFDocument *document;
@property (nonatomic, strong) PDFView *pdfView;

@end

@implementation PDFViewController

-(instancetype)initWithFilePath:(NSString*)filePath {

    self = [super init];
    self.document = [[PDFDocument alloc] initWithFilePath:filePath];
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.document loadDocument];
    
    if(self.pdfView == nil){
        self.pdfView = [[PDFView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:self.pdfView];
        [self.pdfView renderPDF:self.document];
    }
}

@end
