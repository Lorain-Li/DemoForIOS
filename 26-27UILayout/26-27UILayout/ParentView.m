//
//  ParentView.m
//  26-27UILayout
//
//  Created by Lorain on 2016/11/3.
//  Copyright © 2016年 LorainLynies. All rights reserved.
//

#import "ParentView.h"

@implementation ParentView

-(void)createSubviews
{
    CGFloat _sx = self.bounds.size.width;
    CGFloat _sy = self.bounds.size.height;
    
    _vlu = [[UIView alloc] initWithFrame:CGRectMake(0,       0,      20,     20)];
    _vru = [[UIView alloc] initWithFrame:CGRectMake(_sx-20,  0,      20,     20)];
    _vld = [[UIView alloc] initWithFrame:CGRectMake(0,       _sy-20, 20,     20)];
    _vrd = [[UIView alloc] initWithFrame:CGRectMake(_sx-20,  _sy-20, 20,     20)];
    _vmd = [[UIView alloc] initWithFrame:CGRectMake(_sx/2-10,0,      20,     _sy)];

    _vlu.backgroundColor = [UIColor redColor];
    _vru.backgroundColor = [UIColor redColor];
    _vld.backgroundColor = [UIColor redColor];
    _vrd.backgroundColor = [UIColor redColor];
    _vmd.backgroundColor = [UIColor redColor];
    
    [self addSubview:_vlu];
    [self addSubview:_vru];
    [self addSubview:_vld];
    [self addSubview:_vrd];
    [self addSubview:_vmd];
}

-(void)layoutSubviews
{
    CGFloat _sx = self.bounds.size.width;
    CGFloat _sy = self.bounds.size.height;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    _vlu.frame = CGRectMake(0,      0,          20,     20);
    _vru.frame = CGRectMake(_sx-20, 0,          20,     20);
    _vld.frame = CGRectMake(0,      _sy-20,     20,     20);
    _vrd.frame = CGRectMake(_sx-20, _sy-20,     20,     20);
    _vmd.frame = CGRectMake(_sx/2-10,      0,   20,    _sy);
    [UIView commitAnimations];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
