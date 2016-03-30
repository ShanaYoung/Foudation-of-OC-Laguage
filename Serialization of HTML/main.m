//
//  main.m
//  3
//
//  Created by qianfeng on 16/3/29.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Data.h"
#import "DataManager.h"
int main(int argc, const char * argv[]) {
    NSURL *url=[[NSURL alloc] initWithString:@"http://litchiapi.jstv.com/api/GetFeeds?column=0&PageSize=20&pageIndex=1&val=100511D3BE5301280E0992C73A9DEC41"];
    NSData *data=[NSData dataWithContentsOfURL:url];
    
    NSDictionary *dict=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    NSArray *arrExchange=dict[@"paramz"][@"feeds"];
    
    DataManager *dm=[[DataManager alloc] init];
    
    for(int i=0;i<arrExchange.count;i++)
    {
        Data *data=[[Data alloc] initWithNSDictionary:arrExchange[i][@"data"]];
        [dm addData:data];
    }
    
    [dm showAllInfo];
    
    return 0;
}
