//
//  ViewController.m
//  08-9UIViewControler
//
//  Created by JinChun on 16/10/24.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//此函数只加载一次
- (void)viewDidLoad {
    [super viewDidLoad];
    //对于window对象来说，只能有一个根视图控制器，默认新建项目自动加载此视图控制器
    //视图控制器用于管理视图,自动初始化和加载一个视图
    UIView* _myView01 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    _myView01.backgroundColor = [UIColor redColor];
    self.view.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:_myView01];
    NSLog(@"视图控制器加载成功！");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated //视图即将显示，每次显示前运行
{
    NSLog(@"视图即将显示！");
}
- (void) viewDidAppear:(BOOL)animated   //每次显示都会运行此函数
{
    NSLog(@"视图已经显示");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
