//
//  ParentView.h
//  26-27UILayout
//
//  Created by Lorain on 2016/11/3.
//  Copyright © 2016年 LorainLynies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParentView : UIView
{
    UIView* _vlu;
    UIView* _vru;
    UIView* _vld;
    UIView* _vrd;
    UIView* _vmd;
}
-(void)createSubviews;
@end
