//
//  DataManager.m
//  day22_oc_hk
//  Copyright © 2016年 Shana. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

-(instancetype)init
{
    self=[super init];
    if (self) {
        _bm=[[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addData:(Data *)data
{
    [_bm addObject:data];
}

-(void)showAllInfo
{
    if (![_bm count]) {
        NSLog(@"无信息");
        return;
    }
    
    for (int i=0; i<_bm.count; i++) {
        Data *d=_bm[i];
        NSLog(@"%@",d.changed);
        NSLog(@"%@",d.cover);
        NSLog(@"%@",d.format);
        NSLog(@"%@",d.pic);
        NSLog(@"%@",d.subject);
        NSLog(@"%@",d.summary);
        sleep(2);
        NSLog(@"------------------------------");
    }
    
}

@end
