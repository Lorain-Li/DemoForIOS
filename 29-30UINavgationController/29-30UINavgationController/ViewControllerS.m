//
//  ViewControllerS.m
//  29-30UINavgationController
//
//  Created by JinChun on 16/10/25.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewControllerS.h"
#import "ViewControllerT.h"
@interface ViewControllerS ()

@end

@implementation ViewControllerS

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"新的视图";
    UIBarButtonItem* _buttonNext = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleDone target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = _buttonNext;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pressNext
{
    ViewControllerT* _viewS = [[ViewControllerT alloc] init];
    //切换到新的视图
    [self.navigationController pushViewController:_viewS animated:YES];
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
