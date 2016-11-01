//
//  ViewControllerX.m
//  32-33UITabBarController
//
//  Created by JinChun on 16/11/1.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewControllerX.h"

@interface ViewControllerX ()

@end

@implementation ViewControllerX

- (void)viewDidLoad {
    [super viewDidLoad];
#if 0
    UITabBarItem* _tbItm = [[UITabBarItem alloc] initWithTitle:@"view01" image:nil tag:1];
#else
    UITabBarItem* _tbItm = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:1];
    _tbItm.badgeValue = @"100";
#endif
    self.tabBarItem = _tbItm;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
