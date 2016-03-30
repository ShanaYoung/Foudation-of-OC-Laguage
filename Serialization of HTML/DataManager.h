//
//  DataManager.h
//  day22_oc_hk
//
//  Created by qianfeng on 16/3/29.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Data.h"
@interface DataManager : NSObject
{
    NSMutableArray * _bm;
}

-(void)addData:(Data *)data;

-(void)showAllInfo;

@end
