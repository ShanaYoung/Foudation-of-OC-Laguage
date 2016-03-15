//
//  Hands.m
//  day12oc_hk
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//
#import "Hand.h"

@implementation Hand
-(instancetype)initWithPoker:(Poker *) p{
    self = [super init];
    if(self !=nil){
        _poker = p;
    }
    return self;
}

-(void)setPoker:(Poker *)poker{
    _poker = poker;
}
-(Poker *)poker{
    return _poker;
}

-(void) show{
    NSLog(@"手中有%@%c", [_poker color],[_poker num]);
}
@end
