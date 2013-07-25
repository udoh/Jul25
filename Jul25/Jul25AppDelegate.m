//
//  Jul25AppDelegate.m
//  Jul25
//
//  Created by Udo Hoppenworth on 7/25/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "Jul25AppDelegate.h"
#import "MyTabBarController.h"
#import "ViewControllerOne.h"
#import "ViewControllerTwo.h"

@implementation Jul25AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    ViewControllerOne *vc1 = [[ViewControllerOne alloc] init];
    UIImage *i = [UIImage imageNamed:@"Hypno.png"];
    vc1.tabBarItem.title = @"Yellow";
    vc1.tabBarItem.image = i;
    
    ViewControllerTwo *vc2 = [[ViewControllerTwo alloc] init];
    i = [UIImage imageNamed:@"Time.png"];
    vc2.tabBarItem.title = @"Red";
    vc2.tabBarItem.image = i;
    
    NSArray *viewControllers = @[vc1, vc2];
    
    self.tbc = [[MyTabBarController alloc] init];
    [self.tbc setViewControllers:viewControllers];
    
    self.window.rootViewController = self.tbc;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
