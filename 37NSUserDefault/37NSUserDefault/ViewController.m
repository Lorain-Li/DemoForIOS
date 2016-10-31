//
//  ViewController.m
//  37NSUserDefault
//
//  Created by JinChun on 16/10/31.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* _btn01 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton* _btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn01.frame = CGRectMake(30, 10, 100, 50);
    _btn02.frame = CGRectMake(160, 10, 100, 50);
    [_btn01 setTitle:@"Write" forState:UIControlStateNormal];
    [_btn02 setTitle:@"Read" forState:UIControlStateNormal];
    [_btn01 addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchDown];
    [_btn02 addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn01];
    [self.view addSubview:_btn02];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pressRead
{
    NSUserDefaults* _user = [NSUserDefaults standardUserDefaults];
    NSString* _str = [_user objectForKey:@"name"];
    NSLog(@"name is:%@",_str);
    _str = [_user objectForKey:@"email"];
    NSLog(@"email is:%@",_str);
    
}

- (void) pressWrite
{
    NSUserDefaults* _user = [NSUserDefaults standardUserDefaults];
    [_user setObject:@"lorain" forKey:@"name"];
    [_user setObject:@"lynies@outlook.com" forKey:@"email"];
}
@end
