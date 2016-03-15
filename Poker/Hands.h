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
    Poker * _right ;
    Poker * _left;
}

-(void)setRight:(Poker *)right;

-(void)setLeft:(Poker *)left;

-(Poker *)right;

-(Poker *)left;



@end
