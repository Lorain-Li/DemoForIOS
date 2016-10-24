//
//  ViewController.h
//  10TimerMoveViews
//
//  Created by Lorain on 2016/10/24.
//  Copyright © 2016年 LorainLynies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer* _myTimer;
}

@property (retain,nonatomic) NSTimer* myTimer;
@end

