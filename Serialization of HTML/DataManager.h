//
//  DataManager.h
//  day22_oc_hk
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
