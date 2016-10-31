//
//  ViewController.m
//  20-22UIGesture
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
    UIImage* _img01 = [UIImage imageNamed:@"06.jpg"];
    UIImageView* _imgv01 = [[UIImageView alloc] initWithImage:_img01];
    _imgv01.frame = CGRectMake(0, 0, 120, 160);
    
    _imgv01.userInteractionEnabled = YES;
    
    UITapGestureRecognizer* _tapOnce = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnce:)];
    _tapOnce.numberOfTapsRequired = 1; //点击一次
    _tapOnce.numberOfTouchesRequired = 1; //一个手指
    
    UITapGestureRecognizer* _tapTwice = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTwice:)];
    _tapTwice.numberOfTapsRequired = 2; //点击一次
    _tapTwice.numberOfTouchesRequired = 1; //一个手指
    
    _imgv = _imgv01;
    [_imgv01 addGestureRecognizer:_tapOnce];   //将手势添加到视图
    [_imgv01 addGestureRecognizer:_tapTwice];
    [self.view addSubview:_imgv01];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) tapOnce:(UIGestureRecognizer*) tap
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    _imgv.frame = CGRectMake(0, 0, 320, 568);
    [UIView commitAnimations];
    
    NSLog(@"taped");
}

-(void) tapTwice:(UIGestureRecognizer*)tap
{
    
}

@end
