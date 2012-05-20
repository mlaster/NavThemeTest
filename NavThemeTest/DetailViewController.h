//
//  DetailViewController.h
//  NavThemeTest
//
//  Created by Mike Laster on 5/19/12.
//  Copyright (c) 2012 iCloud. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
