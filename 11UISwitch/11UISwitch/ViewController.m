//
//  ViewController.m
//  11UISwitch
//
//  Created by JinChun on 16/10/27.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwitch* _mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 200, 0, 0)];
    [_mySwitch setOn:YES animated:TRUE];        //设为开启，带动画效果
    [_mySwitch setOnTintColor:[UIColor yellowColor]];   //设置开启后的颜色
    [_mySwitch setThumbTintColor:[UIColor blackColor]]; //设置圆钮颜色
    [_mySwitch setTintColor:[UIColor redColor]];        //设置关闭的颜色
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_mySwitch];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) swChange:(UISwitch*)sw
{
    if(sw.on == YES)
    {
        NSLog(@"ON!");
    }
    else
    {
        NSLog(@"OFF!");
    }
    NSLog(@"switch");
}
@end
