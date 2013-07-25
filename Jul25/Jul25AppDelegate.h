//
//  Jul25AppDelegate.h
//  Jul25
//
//  Created by Udo Hoppenworth on 7/25/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyTabBarController;

@interface Jul25AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) MyTabBarController *tbc;
@property (strong, nonatomic) UIWindow *window;

@end
