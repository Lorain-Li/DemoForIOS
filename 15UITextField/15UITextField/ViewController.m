//
//  ViewController.m
//  15UITextField
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
    
    UITextField* _txt = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 300, 50)];
    _txt.tag = 1;
    _txt.font = [UIFont systemFontOfSize:32];
    _txt.textColor = [UIColor blueColor];
    _txt.borderStyle = UITextBorderStyleRoundedRect;
    _txt.keyboardType = UIKeyboardTypeDefault;
    _txt.placeholder = @"user name";    //提示文字
    _txt.secureTextEntry = NO;          //加密
    _txt.delegate = self;

    [self.view addSubview:_txt];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //收回键盘
    [[self.view viewWithTag:1] resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"End edit!");
}

@end
