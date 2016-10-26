//
//  NavgationController.m
//  31UINavgationandToolBar
//
//  Created by JinChun on 16/10/26.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "NavgationController.h"

@interface NavgationController ()

@end

@implementation NavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"导航视图";
    self.view.backgroundColor = [UIColor blueColor];

#if 1
    //设置透明度，默认透明，通过此项设置为不透明
    self.navigationController.navigationBar.translucent = YES;
    //默认风格为白色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
#endif
    
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated
{
    self.navigationController.toolbarHidden = YES;
    self.navigationController.navigationBarHidden = NO;
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
