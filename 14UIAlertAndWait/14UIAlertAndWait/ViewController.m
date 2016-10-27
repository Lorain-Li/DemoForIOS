//
//  ViewController.m
//  14UIAlertAndWait
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
    
    UIButton* _btn01 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn01.frame = CGRectMake(110, 50, 100, 50);
    [_btn01 setTitle:@"Alert" forState:UIControlStateNormal];
    _btn01.tag = 0;
    [_btn01 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchDown];
    
    UIButton* _btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn02.frame = CGRectMake(110, 100, 100, 50);
    [_btn02 setTitle:@"Wait" forState:UIControlStateNormal];
    _btn02.tag = 1;
    [_btn02 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:_btn01];
    [self.view addSubview:_btn02];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pressButton:(UIButton*)btn
{
    if(btn.tag == 0)
    {
        UIAlertView* _alert = [[UIAlertView alloc] initWithTitle:@"NOTICE" message:@"XXXXXXXXX" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",@"OOK", nil];
        [_alert show];
    }
    else
    {
        UIActivityIndicatorView* _wait = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(110, 300, 100, 100)];
        _wait.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        _wait.tag = 3;
        if([self.view viewWithTag:3] == nil)
        {
            [self.view addSubview:_wait];
            [_wait startAnimating];
        }
        else
        {
            [[self.view viewWithTag:3] removeFromSuperview];
        }
    }
}

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"clicked alert button.");
}

- (void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"Alert will dismiss.");
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"Alert did dismiss.");
    
}
@end
