//
//  ThirdVC.m
//  ceshi
//
//  Created by xiehewanbang on 2018/8/16.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

#import "ThirdVC.h"
#import "SVProgressHUD.h"


#define HEXTOCOLOR(hexValue) ([UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1])


@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem * backItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"customBack"] style:UIBarButtonItemStylePlain target:self action:@selector(backClicked)];
    
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSpacer.width = -15;
    self.navigationItem.leftBarButtonItems = @[backItem];
    
    //
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.tintColor = HEXTOCOLOR(0x131313);
    
    NSDictionary *attributes=[NSDictionary dictionaryWithObjectsAndKeys:HEXTOCOLOR(0x131313),NSForegroundColorAttributeName,[UIFont fontWithName:@"HelveticaNeue-Medium" size:18],NSFontAttributeName, nil];
    [self.navigationController.navigationBar setTitleTextAttributes:attributes];
    
    self.title = @"第三";
    [SVProgressHUD showErrorWithStatus:@"第三名哈哈哈"];
    self.view.backgroundColor = [UIColor yellowColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)backClicked
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
