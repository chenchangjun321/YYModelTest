//
//  TestViewController.m
//  ceshi
//
//  Created by xiehewanbang on 2018/8/15.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

#import "TestViewController.h"
#import "SVProgressHUD.h"
#import "ThirdVC.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"测试";
//    [SVProgressHUD showInfoWithStatus:@"这是一个信息"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[ThirdVC new]  animated:YES];
    
}

@end
