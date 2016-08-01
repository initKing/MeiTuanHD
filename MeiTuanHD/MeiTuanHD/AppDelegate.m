//
//  AppDelegate.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/1.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    Class cls = NSClassFromString(@"MTMainViewController");
    NSAssert([cls isSubclassOfClass:[UIViewController class]], @"传入了错误的类");
    
    UIViewController *vc = [[cls alloc] init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
