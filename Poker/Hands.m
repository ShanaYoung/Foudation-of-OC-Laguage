//
//  Hands.m
//  day12oc_hk
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import "Hands.h"

@implementation Hands

-(void)setRight:(Poker *)right
{
    _right=right;
}

-(void)setLeft:(Poker *)left
{
    _left=left;
}

-(Poker *)right
{
    return _right;
}

-(Poker *)left
{
    return _left;
}



@end
