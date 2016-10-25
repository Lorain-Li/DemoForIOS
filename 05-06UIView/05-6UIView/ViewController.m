//
//  ViewController.m
//  05-6UIView
//
//  Created by JinChun on 16/10/24.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* _myView01 = [[UIView alloc] init];
    UIView* _myView02 = [[UIView alloc] init];
    UIView* _myView03 = [[UIView alloc] init];
    _myView01.frame = CGRectMake(50, 50, 100, 100);
    _myView02.frame = CGRectMake(100, 100, 100, 100);
    _myView03.frame = CGRectMake(150, 150, 100, 100);
    _myView01.backgroundColor = [UIColor blackColor];
    _myView02.backgroundColor = [UIColor grayColor];
    _myView03.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:_myView01];
    [self.view addSubview:_myView02];
    [self.view addSubview:_myView03];
#if 1
    [self.view bringSubviewToFront:_myView01];
#else
    UIView* _backView = self.view.subviews[0];
    if(_backView == _myView01)
    {
        NSLog(@"this is OK!");
    }
#endif
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
