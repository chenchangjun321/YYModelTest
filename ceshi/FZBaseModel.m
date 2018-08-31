//
//  FZBaseModel.m
//  ceshi
//
//  Created by xiehewanbang on 2018/6/8.
//  Copyright © 2018年 xiehewanbang. All rights reserved.
//

#import "FZBaseModel.h"
#import "YYModel.h"

@implementation FZBaseModel

    //重写以下几个方法
- (void)encodeWithCoder:(NSCoder*)aCoder {
    [self yy_modelEncodeWithCoder:aCoder];
}
    
- (id)initWithCoder:(NSCoder*)aDecoder
    {
        self = [super init];
        return [self yy_modelInitWithCoder:aDecoder];
    }
    
- (id)copyWithZone:(NSZone*)zone {
    return [self yy_modelCopy];
}
    
- (NSUInteger)hash {
    return [self yy_modelHash];
}
    
- (BOOL)isEqual:(id)object {
    return [self yy_modelIsEqual:object];
}
    
@end
