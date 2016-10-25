//
//  AppDelegate.m
//  07UIWindow
//
//  Created by JinChun on 16/10/24.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[UIViewController alloc] init];
    UIView* _rootView = self.window.rootViewController.view;
   
    UIView* _myView01 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    UIView* _myView02 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    _rootView.backgroundColor = [UIColor whiteColor];
    _myView01.backgroundColor = [UIColor blueColor];
    _myView02.backgroundColor = [UIColor grayColor];
    
    [_rootView addSubview:_myView01];
    [_myView01 addSubview:_myView02];
    
    NSLog(@"address is:%@\r\n",_rootView.window);   //为什么为null?
    NSLog(@"address is:%@\r\n",_myView01.window);
    NSLog(@"address is:%@\r\n",_myView02.window);
    
    [self.window makeKeyAndVisible];
    
    NSLog(@"address is:%@\r\n",_rootView.window);   //地址相同，说明共用一个window
    NSLog(@"address is:%@\r\n",_myView01.window);
    NSLog(@"address is:%@\r\n",_myView02.window);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
