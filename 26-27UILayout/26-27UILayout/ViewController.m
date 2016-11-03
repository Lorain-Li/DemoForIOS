//
//  ViewController.m
//  26-27UILayout
//
//  Created by Lorain on 2016/11/3.
//  Copyright © 2016年 LorainLynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UILayout";
    self.view.backgroundColor = [UIColor purpleColor];
    isLarge1 = FALSE;
    isLarge2 = FALSE;
    _vfp = [[ParentView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    _vfr = [[UIView alloc] initWithFrame:CGRectMake(50, 350, 100, 100)];
    _vlu = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    _vru = [[UIView alloc] initWithFrame:CGRectMake(80, 0, 20, 20)];
    _vld = [[UIView alloc] initWithFrame:CGRectMake(0, 80, 20, 20)];
    _vrd = [[UIView alloc] initWithFrame:CGRectMake(80, 80, 20, 20)];
    _vmd = [[UIView alloc] initWithFrame:CGRectMake(40, 0, 20, 100)];
    
    _vfp.backgroundColor = [UIColor blueColor];
    _vfr.backgroundColor = [UIColor greenColor];
    _vlu.backgroundColor = [UIColor redColor];
    _vru.backgroundColor = [UIColor redColor];
    _vld.backgroundColor = [UIColor redColor];
    _vrd.backgroundColor = [UIColor redColor];
    _vmd.backgroundColor = [UIColor redColor];
    
    [_vfr addSubview:_vlu];
    [_vfr addSubview:_vru];
    [_vfr addSubview:_vld];
    [_vfr addSubview:_vrd];
    [_vfr addSubview:_vmd];
    
    _vlu.autoresizingMask = UIViewAutoresizingFlexibleRightMargin;
    _vru.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    _vld.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    _vrd.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    _vmd.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleHeight;
    
    [_vfp createSubviews];
    [self.view addSubview:_vfp];
    [self.view addSubview:_vfr];
    
    UIBarButtonItem* _btnHand = [[UIBarButtonItem alloc] initWithTitle:@"手动" style:UIBarButtonItemStylePlain target:self action:@selector(pressHandbtn:)];
    UIBarButtonItem* _btnAuto = [[UIBarButtonItem alloc] initWithTitle:@"自动" style:UIBarButtonItemStylePlain target:self action:@selector(pressAutobtn:)];
    
    self.navigationItem.leftBarButtonItem = _btnHand;
    self.navigationItem.rightBarButtonItem = _btnAuto;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pressHandbtn:(UIBarButtonItem*)btn
{
    if (isLarge1) {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1];
        _vfp.frame = CGRectMake(50,  100,  100,  100);
        [UIView commitAnimations];
        isLarge1 = FALSE;
    }
    else
    {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1];
        _vfp.frame = CGRectMake(50,  100,  220,  200);
        [UIView commitAnimations];
        isLarge1 = TRUE;
    }
}

- (void) pressAutobtn:(UIBarButtonItem*)btn
{
    if (isLarge2) {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1];
        _vfr.frame = CGRectMake(50,  350,  100,  100);
        [UIView commitAnimations];
        isLarge2 = FALSE;
    }
    else
    {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1];
        _vfr.frame = CGRectMake(50,  350,  220,  200);
        [UIView commitAnimations];
        isLarge2 = TRUE;
    }
}

@end
