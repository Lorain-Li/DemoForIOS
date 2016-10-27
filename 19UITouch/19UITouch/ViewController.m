//
//  ViewController.m
//  19UITouch
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
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    _label.numberOfLines = 21;
    [_label.font fontWithSize:32];
    _label.textAlignment = NSTextAlignmentCenter;
    _str = [[NSMutableArray alloc] init];
    [_str addObject:@"Start\r\n"];
    _label.text = @"Start\r\n";
    [self.view addSubview:_label];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch* _tmp = [touches anyObject];
    [_str addObject:@"touches began\r\n"];
    [_str addObject:[NSString stringWithFormat:@"touches %ld times\r\n",_tmp.tapCount]];
    NSMutableString* _txt = [[NSMutableString alloc] init];
    long st = (_str.count > 20)? _str.count - 20: 0;
    for (long i = st; i < _str.count; i++) {
        [_txt appendString:[_str objectAtIndex:i]];
    }
    _label.text = _txt;
}

- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_str addObject:@"touches moved\r\n"];
    NSMutableString* _txt = [[NSMutableString alloc] init];
    long st = (_str.count > 20)? _str.count - 20: 0;
    for (long i = st; i < _str.count; i++) {
        [_txt appendString:[_str objectAtIndex:i]];
    }
    _label.text = _txt;
}

- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_str addObject:@"touches ended\r\n"];
    NSMutableString* _txt = [[NSMutableString alloc] init];
    long st = (_str.count > 20)? _str.count - 20: 0;
    for (long i = st; i < _str.count; i++) {
        [_txt appendString:[_str objectAtIndex:i]];
    }
    _label.text = _txt;
}
//在触摸操作时发生意外中断时调用，用于紧急保存事件
- (void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
