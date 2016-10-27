//
//  ViewController.m
//  12UISliderAndProgress
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
    UIProgressView* _myProg = [[UIProgressView alloc] initWithFrame:CGRectMake(10, 100, 300, 10)];
    _myProg.progressTintColor = [UIColor greenColor];   //设置左侧颜色
    _myProg.trackTintColor = [UIColor redColor];        //设置右侧颜色
    _myProg.progress = 0.5;                             //设置进度条的值
    _myProg.progressViewStyle = UIProgressViewStyleBar; //设置风格
    
    UISlider* _mySlider = [[UISlider alloc] initWithFrame:CGRectMake(10, 200, 300, 10)];
    _mySlider.maximumValue = 100;
    _mySlider.minimumValue = 0;
    _mySlider.value = 30;                                //设置滑块位置
    _mySlider.minimumTrackTintColor = [UIColor blackColor];
    _mySlider.maximumTrackTintColor = [UIColor blueColor];
    _mySlider.thumbTintColor = [UIColor redColor];          //设置滑块颜色
    [_mySlider addTarget:self action:@selector(sliderChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_myProg];
    [self.view addSubview:_mySlider];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sliderChange:(UISlider*)sld
{
    NSLog(@"Slider value is %f",sld.value);
}

@end
