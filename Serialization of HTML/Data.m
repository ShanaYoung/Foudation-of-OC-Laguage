//
//  Data.m
//  day22_oc_hk
//
//  Created by qianfeng on 16/3/29.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import "Data.h"

@implementation Data

+(instancetype)creatData
{
    return [[self alloc]init];
}

- (instancetype)initWithNSDictionary:(NSDictionary *)dict
{
    self=[super init];
    if (self) {
        self.changed=dict[@"changed"];
        self.cover=dict[@"cover"];
        self.format=dict[@"format"];
        self.pic=dict[@"pic"];
        self.subject=dict[@"subject"];
        self.summary=dict[@"summary"];
    }
    return self;
}

@end
