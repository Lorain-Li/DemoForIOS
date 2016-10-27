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
    _myButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(pressButton)];
    UIBarButtonItem* _mySpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    _mySpace.width = 130;
    NSArray* _bA = [NSArray arrayWithObjects:_mySpace,_myButton,_mySpace, nil];
    self.toolbarItems = _bA;
    //分组风格
    _tabView = [[UITableView alloc] initWithFrame:[self.view bounds] style:UITableViewStyleGrouped];
    _tabView.delegate =self;
    _tabView.dataSource =self;
    [self.view addSubview:_tabView];
    
    _tabData = [[NSMutableArray alloc] init];
    for (int j = 0; j< 3; j++) {
        NSMutableArray* _tabgroup = [[NSMutableArray alloc] init];
        for (int i = 0; i < 2; i++) {
            NSString* _str = [NSString stringWithFormat:@"group %d line %d.",j,i];
            [_tabgroup addObject:_str];
        }
        [_tabData addObject:_tabgroup];
    }
    [_tabView reloadData];
    
    // Do any additional setup after loading the view, typically from a nib.
}
//设置组数
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"section %ld\r\n",_tabData.count);
    return _tabData.count;
}
//设置TabelView的行数，必须
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSMutableArray* _tabg = [_tabData objectAtIndex:section];
    NSLog(@"group %ld\r\n",_tabg.count);
    return _tabg.count;
}
//加载单元格，每一个单元格都会调用一次
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* _cell = [_tabView dequeueReusableCellWithIdentifier:@"T_T"];
    if(_cell == nil)
    {
        _cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"T_T"];
        //_cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"T_T"];  //子标题风格
    }
    NSMutableArray* _tab = [_tabData objectAtIndex:indexPath.section];
    _cell.textLabel.text = [_tab objectAtIndex:indexPath.row];                                  //添加文字
    //_cell.detailTextLabel.text = @"xxxxxx";
    UIImage* _img = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.PNG",random()%7+1]];
    _cell.imageView.image = _img;                                                               //添加图标
    UISwitch* _switch = [[UISwitch alloc] initWithFrame:CGRectMake(250, 10, 10, 10)];           //添加子视图
    [_cell addSubview:_switch];
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
//设置编辑时的显示效果
- (UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //return UITableViewCellEditingStyleInsert | UITableViewCellEditingStyleDelete; //多选
    //return UITableViewCellEditingStyleNone;   //空
    //return UITableViewCellEditingStyleInsert; //插入
    return UITableViewCellEditingStyleDelete;   //删除
}
//编辑效果设置为删除时，只要出现此函数，通过左滑单元格，即可进入编辑状态，另外，点击删除时将调用此函数
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray* _dele = [_tabData objectAtIndex:indexPath.section];
    [_dele removeObjectAtIndex:indexPath.row];
    if(_dele.count == 0)
    {
        [_tabData removeObjectAtIndex:indexPath.section];
    }
    [_tabView reloadData];
    NSLog(@"deleted!");
}
//切换TableView的编辑状态
-(void) pressButton
{
    if(_isEdit)
    {
        [_tabView setEditing:NO];
        _isEdit = FALSE;
        _myButton.title = @"Edit";
    }
    else
    {
        [_tabView setEditing:YES];
        _isEdit = TRUE;
        _myButton.title = @"Finish";
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
