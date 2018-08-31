//
//  Book.h
//  ceshi
//
//  Created by xiehewanbang on 2018/6/8.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

#import "FZBaseModel.h"

#import "ext.h"
#import "Person.h"

@interface Book : FZBaseModel<NSCoding>
    
    @property NSString *name;
    @property NSInteger page;
    @property ext *ext;
    @property NSString *bookID;
    @property(strong,nonatomic) NSArray  *zuozhe;

@end
