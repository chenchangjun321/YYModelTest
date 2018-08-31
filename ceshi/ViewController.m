//
//  ViewController.m
//  ceshi
//
//  Created by xiehewanbang on 2018/6/8.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

/*
{
    "n":"Harry Pottery",
    "p": 256,
    "ext" : {
        "desc" : "A book written by J.K.Rowing."
    },
    "ID" : 100010
}
 */

#import "ViewController.h"
#import "YYModel.h"
#import "YYCache.h"
#import "Book.h"
#import "TestModel.h"
#import "SVProgressHUD.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *tempString = @"{\"n\":\"Harry Pottery\",\"p\":256,\"zuozhe\":[{\"id\":\"123\",\"name\":\"zhangsan\"},{\"id\":\"456\",\"name\":\"lisi\"}],\"ext\":{\"desc\":\"A book written by J.K.Rowing.\",\"desc2\":\"A book written by J.K.Rowing.2\"},\"ID\":100010}";
    Book *model = [Book yy_modelWithJSON:tempString];


    NSLog(@"%@",model);
    YYCache *yyCache=[YYCache cacheWithName:@"LCJCache"];
    NSString *key=@"key";
    [yyCache setObject:model forKey:key];
    

    



}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *key=@"key";
    YYCache *yyCache=[YYCache cacheWithName:@"LCJCache"];
    BOOL isContains=[yyCache containsObjectForKey:key];
    id vuale=[yyCache objectForKey:key];
    NSLog(@"%@",vuale);
    
    
}


@end
