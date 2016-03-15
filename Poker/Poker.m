//
//  Poker.m
//  day12oc_hk
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import "Poker.h"

@implementation Poker

-(void)setColor:(NSString *)color
{
    _color = color;
}

-(void)setNum:(char)num
{
    _num=num;
}


-(NSString *)color
{
    return _color;
}

-(char)num
{
    return _num;
}

@end
