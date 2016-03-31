//
//  DetailViewController.h
//  ArticleRepository
//
//  Created by Elizabeth on 3/31/16.
//  Copyright © 2016 Elizabeth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

