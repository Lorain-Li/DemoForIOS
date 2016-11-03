//
//  ViewController.h
//  26-27UILayout
//
//  Created by Lorain on 2016/11/3.
//  Copyright © 2016年 LorainLynies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ParentView.h"
@interface ViewController : UIViewController
{
    ParentView* _vfp;
    UIView* _vfr;
    UIView* _vlu;
    UIView* _vru;
    UIView* _vld;
    UIView* _vrd;
    UIView* _vmd;
    BOOL isLarge1,isLarge2;
}

@end

