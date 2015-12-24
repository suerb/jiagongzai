//
//  AddressCenterVC.m
//  Doll
//
//  Created by Wikky on 15/12/24.
//  Copyright © 2015年 Wikky. All rights reserved.
//

#import "AddressCenterVC.h"

@interface AddressCenterVC ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputAddress;
@property (weak, nonatomic) IBOutlet UITextField *inputName;
@property (weak, nonatomic) IBOutlet UIButton *address1;
@property (weak, nonatomic) IBOutlet UIButton *address2;
@property (weak, nonatomic) IBOutlet UIButton *address3;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;
@property (weak, nonatomic) IBOutlet UITextField *detailAddress;

@end

@implementation AddressCenterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViews];

    // Do any additional setup after loading the view from its nib.
}
-(void)initViews
{

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveAddress:(id)sender {
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if([self.inputAddress becomeFirstResponder]){
        [self.inputAddress resignFirstResponder];

    }
    if ([self.inputName becomeFirstResponder]) {
        [self.inputName resignFirstResponder];
    }
    if ([self.detailAddress becomeFirstResponder]) {
        [self.detailAddress resignFirstResponder];
    }
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
