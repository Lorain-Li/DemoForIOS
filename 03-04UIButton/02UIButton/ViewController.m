//
//  ViewController.m
//  02UIButton
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
    UIButton* _myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGRect _winRect = [[UIScreen mainScreen] bounds];
    _myButton.frame = CGRectMake(50, 200, _winRect.size.width-100, 40);
    _myButton.titleLabel.font = [UIFont systemFontOfSize:32];
    _myButton.backgroundColor = [UIColor blueColor];
    [_myButton setTitle:@"press me" forState:UIControlStateNormal];
    [_myButton setTitle:@"loose me" forState:UIControlStateHighlighted];
    [_myButton addTarget:self action:@selector(pressdown) forControlEvents:UIControlEventTouchDown];
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_myButton];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) pressdown
{
    NSLog(@"you pressed button down!");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
