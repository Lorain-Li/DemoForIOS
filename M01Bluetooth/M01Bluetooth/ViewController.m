//
//  ViewController.m
//  M01Bluetooth
//
//  Created by JinChun on 2016/11/2.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"找到以下蓝牙设备";
    _scX = [[UIScreen mainScreen] bounds].size.width;
    _scY = [[UIScreen mainScreen] bounds].size.height;
    _blearry = [[NSMutableArray alloc] init];
    _blelist = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, _scX, _scY) style:UITableViewStylePlain];
    _blelist.delegate = self;
    _blelist.dataSource = self;
    [self.view addSubview:_blelist];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _blearry.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* _cell = [[UITableViewCell alloc] init];
    _cell.textLabel.text = [_blearry objectAtIndex:indexPath.row];
    return _cell;
}
//////////////
//当前蓝牙主设备状态
-(void)centralManagerDidUpdateState:(CBCentralManager *)central{
    if (central.state==CBCentralManagerStatePoweredOn) {
        self.title = @"蓝牙已就绪";
    }else
    {
        self.title = @"蓝牙未准备好";
        switch (central.state) {
            case CBCentralManagerStateUnknown:
                NSLog(@">>>CBCentralManagerStateUnknown");
                break;
            case CBCentralManagerStateResetting:
                NSLog(@">>>CBCentralManagerStateResetting");
                break;
            case CBCentralManagerStateUnsupported:
                NSLog(@">>>CBCentralManagerStateUnsupported");
                break;
            case CBCentralManagerStateUnauthorized:
                NSLog(@">>>CBCentralManagerStateUnauthorized");
                break;
            case CBCentralManagerStatePoweredOff:
                NSLog(@">>>CBCentralManagerStatePoweredOff");
                break;
                
            default:
                break;
        }
    }
}

//扫描到设备会进入方法
-(void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI{
    NSLog(@"扫描连接外设：%@ %@",peripheral.name,RSSI);
    [_blearry addObject:peripheral.name];
    [_blelist reloadData];
}

@end
