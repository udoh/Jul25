//
//  MyTabBarController.m
//  Jul25
//
//  Created by Udo Hoppenworth on 7/25/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

// this method is necessary to support PortraitUpsideDown orientation
- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

@end
