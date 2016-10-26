//
//  ToolBarController.m
//  31UINavgationandToolBar
//
//  Created by JinChun on 16/10/26.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ToolBarController.h"
#import "NavgationController.h"
@interface ToolBarController ()

@end

@implementation ToolBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"工具栏";
    self.view.backgroundColor = [UIColor yellowColor];
    UIBarButtonItem* _bluetooth = [[UIBarButtonItem alloc] initWithTitle:@"Bluetooth" style:UIBarButtonItemStyleDone target:self action:@selector(pressBluetooth)];
    UIBarButtonItem* _setting = [[UIBarButtonItem alloc] initWithTitle:@"Setting" style:UIBarButtonItemStyleDone target:self action:@selector(pressSetting)];
    //添加占位按钮
    UIBarButtonItem* _space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    _space.width = 150;
    NSArray* _buttonA = [[NSArray alloc] initWithObjects:_bluetooth,_space,_setting,nil];
    //将按钮添加到工具栏
    self.toolbarItems = _buttonA;

    //设置透明度，默认透明，通过此项设置为不透明
    self.navigationController.toolbar.translucent = YES;
    //默认风格为白色
    self.navigationController.toolbar.barStyle = UIBarStyleBlackTranslucent;

    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
    self.navigationController.toolbarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) pressBluetooth
{
    
}

-(void) pressSetting
{
    NavgationController* _navPage = [[NavgationController alloc] init];
    [self.navigationController pushViewController:_navPage animated:TRUE];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
