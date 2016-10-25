//
//  ViewController.m
//  29-30UINavgationController
//
//  Created by JinChun on 16/10/25.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerS.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"导航栏示例";
    self.view.backgroundColor = [UIColor yellowColor];
    UIBarButtonItem* _buttonBack = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    //系统风格的按钮元素不能自定义
    UIBarButtonItem* _buttonSystem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressCamera)];
    //通过UILablal自定义一个标签，但是按下后无法显示效果
    UILabel* _text = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 20)];
    _text.text = @"TEXT";
    _text.textAlignment = NSTextAlignmentCenter;
    _text.textColor = [UIColor blueColor];
    UIBarButtonItem* _buttonText = [[UIBarButtonItem alloc] initWithCustomView:_text];
   
    NSArray* _buttonA = [[NSArray alloc] initWithObjects:_buttonSystem,_buttonText,nil];
    //将按钮添加到导航栏左侧，和右侧
    self.navigationItem.leftBarButtonItem = _buttonBack;
    self.navigationItem.rightBarButtonItems = _buttonA;
#if 1
    //设置透明度，默认透明，通过此项设置为不透明
    self.navigationController.navigationBar.translucent = YES;
    //默认风格为白色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
#endif
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pressBack
{
    NSLog(@"you pressed Back!\r\n");
}

- (void) pressCamera
{
    ViewControllerS* _viewS = [[ViewControllerS alloc] init];
    //切换到新的视图，新视图的导航栏属性与原视图相同，由此可判断，几个视图是共用导航栏的
    [self.navigationController pushViewController:_viewS animated:YES];
}
@end
