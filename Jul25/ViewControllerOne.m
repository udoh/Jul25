//
//  ViewController.m
//  VCTest
//
//  Created by Udo Hoppenworth on 7/21/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "ViewControllerOne.h"
#import "ViewOne.h"

@interface ViewControllerOne ()

@property (strong, nonatomic) UIButton *myButton;
@property (strong, nonatomic) UILabel *myLabel;

@end

@implementation ViewControllerOne

- (void)loadView
{
    [super loadView];

    // initialize ViewOne and assign to self.view
    [self setView:[[ViewOne alloc] initWithFrame:self.view.bounds]];
    
    // add target-action to button
    [((ViewOne *)self.view).myButton addTarget:self.view action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillLayoutSubviews
{
    // reposition button to center in view of TabBarController
    CGRect bounds = self.view.bounds;
    
    CGPoint center = CGPointMake(bounds.origin.x + bounds.size.width/2,
                                       bounds.origin.y + bounds.size.height/2);

    ((ViewOne *)self.view).myButton.center = center;
    
    // reposition label to center in view of TabBarController
    center.y += 50;
    ((ViewOne *)self.view).myLabel.center = center;
    
    // reposition textfield to center in view of TabBarController
    center.y -= 100;
    ((ViewOne *)self.view).myTextField.center = center;
    
    NSArray *deviceOrientations = @[@"Unknown", @"Portrait", @"PortraitUpsideDown", @"LandscapeRight", @"LandscapeLeft"];
    ((ViewOne *)self.view).orientationLabel.text = deviceOrientations[self.interfaceOrientation];
}

@end
