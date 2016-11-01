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
    
    _imgv01.userInteractionEnabled = YES;       //允许手势操作
    
    
    UITapGestureRecognizer* _tapOnce = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnce:)];
    _tapOnce.numberOfTapsRequired = 1; //点击一次
    _tapOnce.numberOfTouchesRequired = 1; //一个手指
    
    UITapGestureRecognizer* _tapTwice = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTwice:)];
    _tapTwice.numberOfTapsRequired = 2; //点击一次
    _tapTwice.numberOfTouchesRequired = 1; //一个手指
    
    [_tapOnce requireGestureRecognizerToFail:_tapTwice];    //遇到双击时，使单击实效
    
    //缩放手势
    UIPinchGestureRecognizer* _pinchGes = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAct:)];
    //旋转手势
    UIRotationGestureRecognizer* _rotGes = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotationAct:)];
    
    _pinchGes.delegate = self; //允许多个手势同时操作需要设置代理
    _rotGes.delegate = self;
#if 0
    //一般手势
    UIPanGestureRecognizer* _panGes  = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAct:)];
    [_imgv01 addGestureRecognizer:_panGes];
#else
    //滑动手势
    UISwipeGestureRecognizer* _swipeGes = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeAct:)];
    _swipeGes.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;    //设定滑动方向
    [_imgv01 addGestureRecognizer:_swipeGes];
#endif
    
    UILongPressGestureRecognizer* _longPGes = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
    _longPGes.minimumPressDuration = 0.5;  //设置长按时间
    
    _imgv = _imgv01;
    [_imgv01 addGestureRecognizer:_tapOnce];   //将手势添加到视图
    [_imgv01 addGestureRecognizer:_tapTwice];
    [_imgv01 addGestureRecognizer:_pinchGes];
    [_imgv01 addGestureRecognizer:_rotGes];
    [_imgv01 addGestureRecognizer:_longPGes];
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
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    _imgv.frame = CGRectMake(0, 0, 120, 160);
    [UIView commitAnimations];
    NSLog(@"taped twice");
}

- (void) pinchAct:(UIPinchGestureRecognizer*)pinch
{
    UIImageView* _tmpView = (UIImageView*)pinch.view;
    //缩放变换,参数：原矩阵，x缩放比例，y缩放比例
    _tmpView.transform = CGAffineTransformScale(_tmpView.transform, pinch.scale, pinch.scale);
    pinch.scale = 1;
}

- (void) rotationAct:(UIRotationGestureRecognizer*)rot
{
    UIImageView* _tmpView = (UIImageView*)rot.view;
    //缩放变换,参数：原矩阵，x缩放比例，y缩放比例
    _tmpView.transform = CGAffineTransformRotate(_tmpView.transform, rot.rotation);
    rot.rotation = 0;
}

-(void) panAct:(UIPanGestureRecognizer*)pan
{//有点像touchBegan
    //相对于视图坐标系的位置
    CGPoint _pt = [pan translationInView:self.view];
    NSLog(@"x=%f,y=%f",_pt.x,_pt.y);
    //在视图上移动的速度
    CGPoint _pv = [pan velocityInView:self.view];
    NSLog(@"vx=%f,vy=%f",_pv.x,_pv.y);
}

-(void)swipeAct:(UISwipeGestureRecognizer*)swipe
{
    if (swipe.direction & UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"left");
    }
    else
    {
        NSLog(@"right");
    }
}

-(void)longPress:(UILongPressGestureRecognizer*)lpress
{
    NSLog(@"long");
}

//允许同时响应两个手势
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}
@end
