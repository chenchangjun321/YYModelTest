//
//  Person.m
//  ceshi
//
//  Created by xiehewanbang on 2018/6/8.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

#import "Person.h"

@implementation Person

    + (NSDictionary *)modelCustomPropertyMapper {
        return @{
                 @"Id" : @"id",
                 };
    }

@end
