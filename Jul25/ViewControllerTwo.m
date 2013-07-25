//
//  ViewControllerTwo.m
//  VCTest
//
//  Created by Udo Hoppenworth on 7/21/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "ViewControllerTwo.h"
#import "ViewTwo.h"

@implementation ViewControllerTwo

- (void)loadView
{
    [super loadView];
    
    CGRect bounds = [[UIScreen mainScreen] applicationFrame];
    self.view = [[ViewTwo alloc] initWithFrame:bounds];
    
    // add target-action to slider
    [((ViewTwo *)self.view).mySlider addTarget:self.view action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
}

- (void)viewWillLayoutSubviews
{
    CGRect bounds = self.view.bounds;
    ((ViewTwo *)self.view).mySlider.center = CGPointMake(bounds.origin.x + bounds.size.width/2,
                                                         bounds.origin.y + bounds.size.height/2);
}

@end
