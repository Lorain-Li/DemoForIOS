//
//  ViewController.m
//  10TimerMoveViews
//
//  Created by Lorain on 2016/10/24.
//  Copyright © 2016年 LorainLynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myTimer = _myTimer;

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton* _myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    CGRect _winRect = [[UIScreen mainScreen] bounds];
    _myButton.frame = CGRectMake(50, 300, _winRect.size.width - 100, 50);
    _myButton.backgroundColor = [UIColor blueColor];
    [_myButton setTitle:@"Start/Stop" forState:UIControlStateNormal];
    [_myButton setTitle:@"loose me" forState:UIControlStateHighlighted];
    [_myButton addTarget:self action:@selector(pressDown) forControlEvents:UIControlEventTouchDown];
    UIView* _myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _myView.backgroundColor = [UIColor redColor];
    _myView.tag = 101;
    [self.view addSubview:_myButton];
    [self.view addSubview:_myView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pressDown
{
    if(_myTimer == nil | _myTimer.valid == FALSE)
    {
     _myTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerMove) userInfo:nil repeats:TRUE];
    }
    else{
        [_myTimer invalidate];
    }
}

- (void) timerMove
{
    NSLog(@"1\r\n");
    UIView* _theView = [self.view viewWithTag:101];
    _theView.frame = CGRectMake(_theView.frame.origin.x+1, _theView.frame.origin.y+1, 100, 100);
}
@end
