//
//  ViewController.m
//  17-18UIScrollView
//
//  Created by JinChun on 16/10/25.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //_myScroll在头文件中定义
    _myScroll = [[UIScrollView alloc] init];
    CGRect _rectMain = [[UIScreen mainScreen] bounds];
    _myScroll.frame = CGRectMake(0, 0, _rectMain.size.width, _rectMain.size.height);
    //设置分页效果
    _myScroll.pagingEnabled = YES;
    _myScroll.scrollEnabled = YES;
    _myScroll.contentSize = CGSizeMake(_rectMain.size.width, 7*_rectMain.size.height);
    //设置边缘弹动效果
    _myScroll.bounces = YES;
    _myScroll.alwaysBounceVertical = YES;
    //显示竖直滚动条
    _myScroll.showsVerticalScrollIndicator = YES;
    _myScroll.backgroundColor = [UIColor grayColor];
    self.view.backgroundColor = [UIColor whiteColor];
    
    for (int i = 0 ; i < 7; i++) {
        NSString* _imgName = [NSString stringWithFormat:@"0%d.jpg",i+1];
        UIImage* _imgFile = [UIImage imageNamed:_imgName];
        UIImageView* _imgView = [[UIImageView alloc] initWithImage:_imgFile];
        _imgView.frame = CGRectMake( 0, _rectMain.size.height * i, _rectMain.size.width, _rectMain.size.height);
        [_myScroll addSubview:_imgView];
    }
    [self.view addSubview:_myScroll];
    
    //将当前视图控制器设置为ScrollView的代理
    _myScroll.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//拖动视图，将调用此函数
- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    //显示当前视图的偏移量
    NSLog(@"y = %f\r\n",scrollView.contentOffset.y);
}
//停止拖动视图
- (void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"End Dragging!\r\n");
}

- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"Scrolling Stop!");
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //在滚动视图外点击，由于滚动视图将屏幕占满，无法执行此函数
    NSLog(@"Touched!\r\n");
    //滚动到指定位置
    [_myScroll scrollRectToVisible:CGRectMake(0, 0, 320, 400) animated:TRUE];
}

@end
