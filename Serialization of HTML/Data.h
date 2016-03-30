//
//  Data.h
//  day22_oc_hk
//
//  Created by qianfeng on 16/3/29.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

@property(copy,nonatomic)NSString *changed;
@property(copy,nonatomic)NSString *cover;
@property(copy,nonatomic)NSString *format;
@property(copy,nonatomic)NSString *pic;
@property(copy,nonatomic)NSString *subject;
@property(copy,nonatomic)NSString *summary;

- (instancetype)initWithNSDictionary:(NSDictionary *)dict;
+(instancetype)creatData;
@end
