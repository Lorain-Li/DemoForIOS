//
//  ViewController.m
//  39-42UITabelView
//
//  Created by JinChun on 16/10/26.
//  Copyright © 2016年 Lorain_Lynies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem* _myButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(pressButton)];
    NSArray* _bA = [[NSArray alloc] initWithObjects:_myButton,nil];
    self.toolbarItems = _bA;
    //分组风格
    _tabView = [[UITableView alloc] initWithFrame:[self.view bounds] style:UITableViewStyleGrouped];
    _tabView.delegate =self;
    _tabView.dataSource =self;
    [self.view addSubview:_tabView];
    
    // Do any additional setup after loading the view, typically from a nib.
}
//设置组数
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
//设置TabelView的行数，必须
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
//加载单元格，每一个单元格都会调用一次
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* _cell = [_tabView dequeueReusableCellWithIdentifier:@"T_T"];
    if(_cell == nil)
    {
        _cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"T_T"];
    }
    _cell.textLabel.text = [NSString stringWithFormat:@"this is line %ld,%ld",indexPath.section,indexPath.row];
    return _cell;
}
//设置单元格高度
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
//设置分组标题
- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"group %ld",section];
}
//切换TableView的编辑状态
-(void) pressButton
{
    if(_isEdit)
    {
        [_tabView setEditing:NO];
        _isEdit = FALSE;
    }
    else
    {
        [_tabView setEditing:YES];
        _isEdit = TRUE;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewDidAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
    self.navigationController.toolbarHidden = NO;
}

@end
