//
//  Poker.h
//  day12oc_hk
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Poker : NSObject

{
    NSString * _color;
    char _num;
}

-(void)setColor:(NSString *)color;

-(void)setNum:(char)num;

-(NSString *)color;

-(char)num;

@end
