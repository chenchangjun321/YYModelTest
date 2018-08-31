//
//  Book.m
//  ceshi
//
//  Created by xiehewanbang on 2018/6/8.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

#import "Book.h"

@implementation Book
    
    //返回一个 Dict，将 Model 属性名对映射到 JSON 的 Key。
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"name" : @"n",
             @"page" : @"p",
             @"bookID" : @[@"id",@"ID",@"book_id"],
             };
}
+ (NSDictionary *)modelContainerPropertyGenericClass{
        return @{
                 @"zuozhe":[Person class],
                 };
    }

@end
