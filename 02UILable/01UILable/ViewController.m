//
//  ViewController.m
//  01UILable
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
    
    UILabel* _myLabel = [[UILabel alloc] init];
    CGRect _winRect = [[UIScreen mainScreen] bounds];
    _myLabel.text = @"Hello World!\r\nCode by\r\nLorainLynies.";
    _myLabel.textAlignment = NSTextAlignmentCenter;
    _myLabel.font = [UIFont systemFontOfSize:32];
    _myLabel.backgroundColor = [UIColor purpleColor];
    _myLabel.frame = CGRectMake(50, 200, _winRect.size.width - 100, 150);
    _myLabel.shadowColor = [UIColor grayColor];
    _myLabel.shadowOffset = CGSizeMake(5, 5);
    _myLabel.numberOfLines = 3;
    [self.view addSubview:_myLabel];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
