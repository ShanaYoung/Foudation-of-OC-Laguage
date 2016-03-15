//
//  main.m
//  newPoker
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Poker.h"
#import "Hands.h"
#import "Human.h"

int main(int argc, const char * argv[]) {
    Poker *p1=[[Poker alloc] init];
    [p1 setNum:'K'];
    [p1 setColor:@"红桃"];
    
    Poker *p2=[[Poker alloc] init];
    [p2 setNum:'A'];
    [p2 setColor:@"黑桃"];
    
    NSLog(@"左手%@%c  右手%@%c",[p1 color],[p1 num],[p2 color],[p2 num]);
    
    Hands *hand=[[Hands alloc] init];
    [hand setLeft:p1];
    
    [hand setRight:p2];
    
    Human *hum=[[Human alloc] init];
    [hum setLeft:[hand right]];
    [hum setRight:[hand left]];
    
    NSLog(@"左手%@%c  右手%@%c",[[hum left] color],[[hum left] num],[[hum right] color],[[hum right] num]);
    
    
    return 0;
}
