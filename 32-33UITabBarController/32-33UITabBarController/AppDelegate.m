//
//  AppDelegate.m
//  32-33UITabBarController
//
//  Created by JinChun on 16/11/1.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewControllerX.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
#define TABBARCONTROLLERDELEGATE        (1)

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewControllerX* _vc01 = [[ViewControllerX alloc] init];
    ViewController* _vc02 = [[ViewController alloc] init];
    ViewController* _vc03 = [[ViewController alloc] init];
    ViewController* _vc04 = [[ViewController alloc] init];
    ViewController* _vc05 = [[ViewController alloc] init];
    ViewController* _vc06 = [[ViewController alloc] init];
    _vc01.title = @"视图1";
    _vc02.title = @"视图2";
    _vc03.title = @"视图3";
    _vc04.title = @"视图4";
    _vc05.title = @"视图5";
    _vc06.title = @"视图6";
    _vc01.view.backgroundColor = [UIColor yellowColor];
    _vc02.view.backgroundColor = [UIColor blueColor];
    _vc03.view.backgroundColor = [UIColor greenColor];
    _vc04.view.backgroundColor = [UIColor grayColor];
    _vc05.view.backgroundColor = [UIColor redColor];
    _vc06.view.backgroundColor = [UIColor purpleColor];
#if !TABBARCONTROLLERDELEGATE
    NSArray* _vcA = [NSArray arrayWithObjects:_vc01,_vc02,_vc03, nil];
#else
    NSArray* _vcA = [NSArray arrayWithObjects:_vc01,_vc02,_vc03,_vc04,_vc05,_vc06, nil];
#endif
    UITabBarController* _tbVC = [[UITabBarController alloc] init];
    _tbVC.viewControllers = _vcA;
    _tbVC.selectedIndex = 1;        //设置视图2为默认显示视图
    _tbVC.tabBar.translucent = YES;  //设置透明度
    _tbVC.tabBar.barTintColor = [UIColor blackColor];
    _tbVC.delegate = self;
    self.window.rootViewController = _tbVC;

    [self.window makeKeyAndVisible];
    return YES;
}
//代理协议
-(void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
{//即将开始修改分栏控制器顺序
    NSLog(@"will");
}
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{//选中分栏控制器
    NSLog(@"did");
}
-(void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{//即将结束修改
    NSLog(@"will end");
}
-(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{//结束修改
    if (changed == YES) {
        NSLog(@"changed");
    }
    NSLog(@"did end");
}
//


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
