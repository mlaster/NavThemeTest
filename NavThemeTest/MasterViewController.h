//
//  MasterViewController.h
//  NavThemeTest
//
//  Created by Mike Laster on 5/19/12.
//  Copyright (c) 2012 iCloud. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
