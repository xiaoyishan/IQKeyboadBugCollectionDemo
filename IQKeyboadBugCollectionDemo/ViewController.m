//
//  ViewController.m
//  IQKeyboadBugCollectionDemo
//
//  Created by xiaSang on 2018/3/22.
//  Copyright © 2018年 xiaSang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property (strong, nonatomic) UITableView *Table;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _Table = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:_Table];
    _Table.delegate = self;
    _Table.dataSource = self;
    
}




#pragma mark ---------UITableView----------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 26;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"democell";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    
    
    
    UITextField *feild = [[UITextField alloc]initWithFrame:CGRectMake(0, 7, 375, 30)];
    feild.delegate = self;
    feild.font = [UIFont systemFontOfSize:14];
    feild.clearButtonMode = UITextFieldViewModeWhileEditing;
    feild.backgroundColor = [UIColor cyanColor];
    feild.textAlignment = 1;
    feild.placeholder = @"placeholder";
    feild.text = @"";
    feild.keyboardType=UIKeyboardTypeDecimalPad;
    [cell addSubview:feild];

    
    if (indexPath.row == 6) {
        feild.text = @"in 4.7 inche Click -> Close keyboard -> Click again";
    }
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- ( CGFloat )tableView:( UITableView *)tableView heightForHeaderInSection:( NSInteger )section{
    return 15.0f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}





@end
