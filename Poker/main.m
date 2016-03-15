//
//  main.m
//  newPoker
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

int main(int argc, const char * argv[]) {
    Poker * p1 = [[Poker alloc] initWithHua:@"❤️" andNum:@"K"];
    [p1 show];
    Hand * h1 = [[Hand alloc] initWithPoker:p1];
    [h1 show];
    
    Hand * h2 = [[Hand alloc] init];
    [h2 setPoker:[[Poker alloc] initWithHua:@"♠️" andNum:@"A"]];
    
    Human * per = [[Human alloc] initWithName:@"小明" andRight:h2 andLeft:h1];
    
    [per show];
    [per change];
    [per show];
    
    return 0;
}
