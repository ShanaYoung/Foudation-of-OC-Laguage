//
//  Human.m
//  day12oc_hk
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import "Human.h"

@implementation Human

-(instancetype)initWithName:(NSString *)name
                   andRight:(Hand *)hanR
                   andLeft:(Hand *)handL
    {
        self=[super init];
        if(self)
        {
            _name = name;
            _leftHand = handL;
            _rightHand = handR;
        }
        return self;
    }

-(void)show{
    NSLog(@"%@左手有%@%c， 右手有%@%c", _name, [[_leftHand poker] color],
          [[_leftHand poker] num],[[_rightHand poker] color],
          [[_rightHand poker] num]);
}

-(void)change
{
  Poker * temp = [_rightHand poker];
  [_rightHand setPoker:[_leftHand poker]];
  [_leftHand setPoker:temp];
    
}

@end
