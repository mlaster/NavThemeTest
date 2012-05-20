//
//  DetailViewController.m
//  NavThemeTest
//
//  Created by Mike Laster on 5/19/12.
//  Copyright (c) 2012 iCloud. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *backImage = [[UIImage imageNamed:@"back_button_default"] resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 15.0f, 0.0f, 6.0f)];
    //    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"CustomBack"
    //                                                                             style:UIBarButtonItemStyleBordered
    //                                                                            target:nil
    //                                                                            action:NULL];
    [self.navigationItem.backBarButtonItem setBackButtonBackgroundImage:backImage
                                                               forState:UIControlStateNormal
                                                             barMetrics:UIBarMetricsDefault];

	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}
							
@end
