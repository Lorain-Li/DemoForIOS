//
//  ViewController.h
//  M01Bluetooth
//
//  Created by JinChun on 2016/11/2.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface ViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource,CBCentralManagerDelegate,CBPeripheralDelegate>
{
    CGFloat _scX,_scY;
    NSMutableArray* _blearry;
    UITableView* _blelist;
}

@end

