//
//  Hands.h
//  day12oc_hk
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Poker.h"
@interface Hands : NSObject

{
    Poker * _poker;
}

-(instancetype)initWithPoker:(Poker *) p;

-(void)setPoke:(Poker *)poker;

-(Poker *)poker;

-(void)show;



@end
