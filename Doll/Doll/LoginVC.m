//
//  LoginVC.m
//  demoB2th
//
//  Created by Wikky on 15/10/13.
//  Copyright © 2015年 Wikky. All rights reserved.
//

#import "LoginVC.h"
#define mainWidth           self.view.frame.size.width
#define mainHeight          self.view.frame.size.height
@interface LoginVC ()<UITextFieldDelegate>
{
    NSDictionary *dict;
}
//@property(nonatomic,strong)MBProgressHUD *progressHUD;
@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initViews];
}
-(void)initViews
{
    UIButton *wechatLogin = [UIButton buttonWithType:UIButtonTypeCustom];
    wechatLogin.layer.cornerRadius = 4;
    wechatLogin.layer.masksToBounds = YES;
    [wechatLogin setTitle:@"微信登录" forState:UIControlStateNormal];
    [wechatLogin setFrame:CGRectMake(60/2,mainHeight - 180, mainWidth - 60, 45)];
    [wechatLogin setBackgroundColor:[UIColor colorWithRed:37/255.0 green:197/255.0 blue:223/255.0 alpha:1]];
    [wechatLogin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:wechatLogin];
    [wechatLogin addTarget:self action:@selector(loginRequest) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *login = [UIButton buttonWithType:UIButtonTypeCustom];
    login.layer.cornerRadius = 4;
    login.layer.masksToBounds = YES;
    [login setTitle:@"手机注册" forState:UIControlStateNormal];
    [login setFrame:CGRectMake(60/2,mainHeight - 120, mainWidth - 60, 45)];
    [login setBackgroundColor:[UIColor colorWithRed:37/255.0 green:197/255.0 blue:223/255.0 alpha:1]];
    [login setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:login];
    [login addTarget:self action:@selector(loginRequest) forControlEvents:UIControlEventTouchUpInside];

    //忘记密码按钮
    UIButton *forgetPasswordBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [forgetPasswordBtn setTitle:@"游客登录" forState:UIControlStateNormal];
    [forgetPasswordBtn setFrame:CGRectMake(self.view.center.x - 45,mainHeight - 70, 90, 45)];
    [forgetPasswordBtn setTitleColor:[UIColor colorWithRed:5/255.0 green:131/255.0 blue:181/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:forgetPasswordBtn];
    [forgetPasswordBtn addTarget:self action:@selector(backTTT) forControlEvents:UIControlEventTouchUpInside];


}

-(void)goToSign
{
//    SignVC *sign = [[SignVC alloc]init];
//
//    sign.modalPresentationStyle = UIModalTransitionStyleCrossDissolve;
//    UINavigationController *navSign = [[UINavigationController alloc]initWithRootViewController:sign];
//    [self presentViewController:navSign animated:YES completion:^{
//        sign.loginV = self;
//    }];

}

-(void)backTTT
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

-(void)loginRequest
{
//    self.progressHUD = [[MBProgressHUD alloc]initWithView:self.view];
//    [self.progressHUD setYOffset:80];
//
//    [self.progressHUD setLabelText:@"正在登录"];
//    [self.progressHUD show:YES];
//    [self.view addSubview:self.progressHUD];

//    NSString *pwd = pwdInput.text;//MD5加密
//    NSString *strHost = Host;
//    NSString *strPort = @"/login_check";
//    NSString *urlStr = [NSString stringWithFormat:@"%@%@",strHost,strPort];
    
//    NSString *str = @"http://119.134.250.31/index/login_check";
//    NSURL *url = [NSURL URLWithString:urlStr];
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
//    request.HTTPMethod = @"POST";
//    NSString *bodyStr =[NSString stringWithFormat:@"phone=%@&pwd=%@",phoneNumInput.text,pwd];
//    NSData *data = [bodyStr dataUsingEncoding:NSUTF8StringEncoding];
//    request.HTTPBody = data;
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//        //block里面的三个参数 服务器响应信息 下载的data 错误信息
//        //解析data
//        if (data) {
//            dict = [ NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
//            NSLog( @"%@",[dict valueForKey:@"status"]);
//            if ([[dict valueForKey:@"status"] isEqualToString:@"success"])//登录成功
//            {
//                
//                [PLIST setObject:dict forKey:@"userInfo"];
//                NSLog( @"userInfo === %@",[PLIST valueForKey:@"userInfo"]);
//                //添加显示
//                [self dismissViewControllerAnimated:YES completion:^{
//                    
//                }];
//            }
//            else if([[dict valueForKey:@"status"] isEqualToString:@"error_username_or_password_error"])
//            {
//                
////                [self.progressHUD removeFromSuperview];
//                NSLog(@"登录失败");
//            }
//        }
//        else
//        {
////            NSTimer *time = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(success) userInfo:nil repeats:NO];
////            [[NSRunLoop currentRunLoop]addTimer:time forMode:NSDefaultRunLoopMode];
//            NSLog(@"%@",connectionError);
////            [self.progressHUD show:NO];
//        }
//    }];
}

-(void)login
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
