//
//  ViewController.m
//  Doll
//
//  Created by Wikky on 15/12/22.
//  Copyright © 2015年 Wikky. All rights reserved.
//

#import "ViewController.h"
#import "CustomCenterVC.h"
#import "ChartTVC.h"
#import "LoginVC.h"
#import "HomeModel.h"
#define mainWidth           self.view.frame.size.width
#define mainHeight          self.view.frame.size.height

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *table;
    NSMutableArray *dataArray;
    NSMutableArray *sectionArray;
    NSMutableArray *modelArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor darkGrayColor];
    self.title = @"游戏中心";
    [self initViews];
    [self getModelData];
    // Do any additional setup after loading the view, typically from a nib.
}



-(void)getModelData//暂时写假数据
{
    HomeModel *model1 = [[HomeModel alloc]init];
    model1.productDetail = @"";
    model1.productName =@"四轴无人机";
    model1.player = 111;
    model1.watcher = 90;

    HomeModel *model2 = [[HomeModel alloc]init];
    model2.productDetail = @"";
    model2.productName =@"王尼玛头套";
    model2.player = 3453;
    model2.watcher = 34;

    HomeModel *model3 = [[HomeModel alloc]init];
    model3.productDetail = @"";
    model3.productName =@"充气袜子";
    model3.player = 333;
    model3.watcher = 123;
    modelArray =[NSMutableArray arrayWithObjects:model1,model2,model3 ,nil];
    
    
}
-(void)initViews
{
    sectionArray = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
    table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height )];
    table.backgroundColor = [UIColor whiteColor];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"个人中心" style:UIBarButtonItemStyleDone target:self action:@selector(jumpToCustomView)];
    self.navigationItem.rightBarButtonItem = rightItem;
//    rightItem.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"排行榜" style:UIBarButtonItemStyleDone target:self action:@selector(jumpToChartView)];
    self.navigationItem.leftBarButtonItem = leftItem;
//    leftItem.tintColor = [ UIColor whiteColor];
    dataArray = [NSMutableArray arrayWithObjects:@"视频",@"奖品目录", nil];

}
-(void)jumpToCustomView
{
    CustomCenterVC *custom = [[CustomCenterVC alloc]init];
//    CATransition *transition = [CATransition animation];
//    transition.duration = 0.3f;
//    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    transition.type = @"cube";
//    transition.subtype = kCATransitionFromRight;
//    transition.delegate = self;
//    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    [self.navigationController pushViewController:custom animated:YES];
}
-(void)jumpToChartView
{
    ChartTVC *chart = [[ChartTVC alloc]init];
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = @"cube";
    transition.subtype = kCATransitionFromLeft;
    transition.delegate = self;
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    [self.navigationController pushViewController: chart animated:YES];
}
#pragma mark TableView DeleGate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [modelArray count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataArray.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:identifier];
    if (cell ==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    if (indexPath.row == 0) {
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20,mainWidth - 40 , 150)];
        imgView.backgroundColor = [UIColor lightGrayColor];
        
        UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(20, imgView.frame.size.height + 25,mainWidth, 30)];
        UILabel *product_detail = [[UILabel alloc]initWithFrame:CGRectMake(20, imgView.frame.size.height + 25 + 25,mainWidth, 30)];
        UILabel *player_detail = [[UILabel alloc]initWithFrame:CGRectMake(mainWidth - 160, imgView.frame.size.height + 25 + 25,140, 30)];
        HomeModel *mt = [modelArray objectAtIndex:indexPath.row];
        title.text = [NSString stringWithFormat:@"商品名称 - %@",mt.productName];
        product_detail.text = [NSString stringWithFormat:@"商品属性 : %@",mt.productDetail ];
        player_detail.text = [NSString stringWithFormat:@"玩家数:%d  观看者:%d",mt.player,mt.watcher];
        

        product_detail.font = [UIFont systemFontOfSize:12];
        product_detail.textColor = [UIColor darkGrayColor];
        player_detail.textColor  = [UIColor lightGrayColor];
        player_detail.textAlignment = NSTextAlignmentRight;
        player_detail.font = [UIFont systemFontOfSize:12];
        [cell.contentView addSubview:title];
        [cell.contentView addSubview:product_detail];
        [cell.contentView addSubview:imgView];
        [cell.contentView addSubview:player_detail];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.contentView.backgroundColor = [UIColor whiteColor];
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.text = dataArray [indexPath.row];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    headView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    return headView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row ==0) {
        return 240;
    }
    else{
        return 45;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LoginVC *login = [[LoginVC alloc]init];
    login.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    if (indexPath.row == 0) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:login animated:YES completion:^{
            }];
        });
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
