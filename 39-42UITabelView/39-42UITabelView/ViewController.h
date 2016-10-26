//
//  ViewController.h
//  39-42UITabelView
//
//  Created by JinChun on 16/10/26.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* _tabView;
    BOOL _isEdit;
}

@end

