//
//  DetailViewController.m
//  ArticleRepository
//
//  Created by Elizabeth on 3/31/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *SiteView;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        NSURL *url = [NSURL URLWithString:[[self.detailItem valueForKey:@"url"] description]];
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        [_SiteView loadRequest:requestObj];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
