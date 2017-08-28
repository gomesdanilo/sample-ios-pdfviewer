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
@property (nonatomic, strong) NSString *filePath;
@property (nonatomic, strong) PDFView *pdfView;
@end

@implementation PDFViewController

#pragma mark - Lifecycle

-(instancetype)initWithFilePath:(NSString*)filePath {

    self = [super init];
    self.filePath = filePath;
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self loadPDFView];
}

#pragma mark - Aux

-(void)loadPDFView{
    if(self.pdfView == nil){
        self.pdfView = [[PDFView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:self.pdfView];
        [self.pdfView renderPDFWithFilePath:self.filePath];
    }
}

@end
