//
//  CustomCenterVC.m
//  Doll
//
//  Created by Wikky on 15/12/22.
//  Copyright © 2015年 Wikky. All rights reserved.
//
#import "AddressCenterVC.h"
#import "CustomCenterVC.h"
#import "ProductVC.h"
#define mainWidth           self.view.frame.size.width
#define mainHeight          self.view.frame.size.height

@interface CustomCenterVC ()<
UITableViewDataSource,
UITableViewDelegate,
UIActionSheetDelegate>
{
    UITableView *table;
}
@end

@implementation CustomCenterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
//    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"游戏中心" style:UIBarButtonItemStyleDone target:self action:@selector(backToHome)];
//    self.navigationItem.leftBarButtonItem = leftItem;
//    self.navigationController.navigationBar.barTintColor  = [UIColor groupTableViewBackgroundColor];
    self.title = @"个人中心";
    [self initViews];
    // Do any additional setup after loading the view from its nib.
}

//-(void)viewWillAppear:(BOOL)animated
//{
//
//    self.navigationController.navigationBarHidden = YES;
//}
-(void)initViews
{
    table = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    table.delegate = self;
    table.dataSource = self;
    table.tableFooterView = [[UIView alloc]init];
//    table.scrollEnabled = NO;
    table.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view addSubview:table];
//    UIButton *leftItem = [UIButton buttonWithType:UIButtonTypeCustom];
//    [leftItem setTitle:@"返回游戏中心按钮" forState:UIControlStateNormal];
//    leftItem.titleLabel.font = [UIFont systemFontOfSize:11];
//    [leftItem setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    
//    [leftItem addTarget:self action:@selector(backToHome) forControlEvents:UIControlEventTouchUpInside];
//    leftItem.frame = CGRectMake(15, 20, 110, 45);
//    leftItem.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:leftItem];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row){
                case 0:
                    cell.textLabel.text = @"我的金币";
                    break;
                case 1:
                    cell.textLabel.text = @"我的收货地址";

                    break;
                case 2:
                    cell.textLabel.text = @"我的奖品";
                    break;
                default:
                    break;
            }
            break;
        case 1:
            switch (indexPath.row) {
                case 0:
                    cell.textLabel.text = @"修改密码";
                    break;
                case 1:
                    cell.textLabel.text = @"绑定手机号";
                    break;
                default:
                    break;
            }
            break;
        case 2:
            cell.textLabel.text = @"退出登录";
            cell.textLabel.textAlignment = NSTextAlignmentCenter;
            cell.textLabel.textColor = [UIColor redColor];
            cell.accessoryType = UITableViewCellAccessoryNone;
        default:
            break;
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 3;
            break;
        case 1:
            return 2;
            break;
        case 2:
            return 1;
            break;
        default:
            return 1;
            break;
    }
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return 150;
            break;
        case 1:
            return 30;
        default:
            return 80;
            break;
    }
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section ==0) {
        UIView *header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
        UILabel *userName = [[UILabel alloc]initWithFrame:CGRectMake( 20, 110, self.view.frame.size.width - 40, 30)];
        userName.text = @"王大锤";
        userName.textAlignment = NSTextAlignmentCenter;
        UIImageView *headImg =[[UIImageView alloc]initWithFrame:CGRectMake(header.center.x -40, 20, 80, 80)];
        headImg.backgroundColor = [UIColor lightGrayColor];
        headImg.layer.cornerRadius = headImg.frame.size.width/2;
        headImg.layer.masksToBounds = YES;
        [header addSubview:userName];
        [header addSubview:headImg];
        return header;
//        UIView *header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, mainWidth, 110)];
//        header.backgroundColor = [UIColor clearColor];
//        
//        UIImageView *imV = [[UIImageView alloc] init];
////        imV.image = [common readImageWithUUID:self.devicemodel.userid]==nil?[UIImage imageNamed:@"baby_head"]:[common readImageWithUUID:self.devicemodel.userid];
//        imV.tag = 101;
//        imV.layer.cornerRadius = 4.0;
//        imV.layer.masksToBounds = YES;
//        imV.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
////        babysName = [[UITextField alloc]initWithFrame:CGRectMake(header.center.x - 50 , 70, 100, 45)];
////        babysName.textAlignment = NSTextAlignmentCenter;
////        babysName.text = self.devicemodel.username;
////        babysName.userInteractionEnabled = NO;
////        babysName.delegate = self;
////        babysName.returnKeyType = UIReturnKeyDone;
//        
//        UIButton *imVBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [imVBtn setFrame:CGRectMake(header.center.x - 30, 10, 60, 60)];
//        [imVBtn setBackgroundImage:imV.image   forState:UIControlStateNormal];
//        imVBtn.layer.cornerRadius = 4;
//        imVBtn.layer.masksToBounds = YES;
//        imVBtn.backgroundColor = [UIColor lightGrayColor];
////        [imVBtn addTarget:self action:@selector(headerTap:) forControlEvents:UIControlEventTouchUpInside];
//        
//        UIButton *edit = [UIButton buttonWithType:UIButtonTypeCustom];
//        [edit setBackgroundImage:[UIImage imageNamed:@"bianji"] forState:UIControlStateNormal];
//        edit.frame = CGRectMake(header.center.x + 75, 78, 30, 30);
////        [edit addTarget: self action:@selector(changeName) forControlEvents:UIControlEventTouchUpInside];
//        [header addSubview:edit];
//        [header addSubview:imVBtn];
////        [header addSubview:babysName];
//        //        [header addSubview:imV];
//        return header;
    }

    return nil;
}
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    if (section == 2) {
//        return  55;
//    }
//    else
//    {
//        return 0;
//    }
//}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *foot = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    foot.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    return foot;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProductVC *product = [[ProductVC alloc]init];
    AddressCenterVC *address = [[AddressCenterVC alloc]init];
    self.navigationController.navigationBarHidden = NO;
//    UINavigationController *navProduct = [[UINavigationController alloc]initWithRootViewController:product];
    if (indexPath.section == 0) {
        if (indexPath.row == 1) {
            self.navigationController.navigationBarHidden = NO;
            [self.navigationController pushViewController:address animated:YES];
        }
        switch (indexPath.row){
            case 0:
//                cell.textLabel.text = @"我的金币";
                break;
            case 2:
                [self.navigationController pushViewController:product animated:YES];
                break;
            default:
                break;
        }
    }
    else if (indexPath.section ==2)
    {
        UIActionSheet *alert = [[UIActionSheet alloc]initWithTitle:@"退出登录"
                                                          delegate:self
                                                 cancelButtonTitle:@"容我三思"
                                            destructiveButtonTitle:@"退了退了"
                                                 otherButtonTitles:nil,
                                nil];
        [alert showInView:self.view];
    }
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        [self backToHome];
    }
}
-(void)backToHome
{
//    CATransition *transition = [CATransition animation];
//    transition.duration = 0.3f;
//    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    transition.type = @"cube";
//    transition.subtype = kCATransitionFromLeft;
//    transition.delegate = self;
//    self.navigationController.navigationBarHidden = NO;
//    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
