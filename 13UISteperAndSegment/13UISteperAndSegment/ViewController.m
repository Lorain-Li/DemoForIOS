//
//  ViewController.m
//  13UISteperAndSegment
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
    
    UIStepper* _mySteper = [[UIStepper alloc] initWithFrame:CGRectMake(200, 50, 100, 50)];
    _mySteper.maximumValue = 100;
    _mySteper.minimumValue = 1;
    _mySteper.value = 30;
    _mySteper.stepValue = 3;
    _mySteper.autorepeat = YES;             //允许持续改变值
    _mySteper.continuous = YES;             //连续响应事件
    [_mySteper addTarget:self action:@selector(steperChange:) forControlEvents:UIControlEventValueChanged];
    
    UISegmentedControl* _mySegment = [[UISegmentedControl alloc] initWithFrame:CGRectMake(10, 200, 300, 50)];
    [_mySegment insertSegmentWithTitle:@"$0" atIndex:0 animated:YES];
    [_mySegment insertSegmentWithTitle:@"$5" atIndex:1 animated:YES];
    [_mySegment insertSegmentWithTitle:@"$10" atIndex:2 animated:YES];
    [_mySegment insertSegmentWithTitle:@"$20" atIndex:3 animated:YES];
    _mySegment.selectedSegmentIndex = 1;
    [_mySegment addTarget:self action:@selector(segChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_mySteper];
    [self.view addSubview:_mySegment];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) steperChange:(UIStepper*)stp
{
    NSLog(@"Stepper value is %f",stp.value);
}

- (void) segChange:(UISegmentedControl*)seg
{
    NSLog(@"segment selected %ld",seg.selectedSegmentIndex);
}

@end
