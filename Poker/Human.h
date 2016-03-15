//
//  Human.h
//  day12oc_hk
//
//  Created by qianfeng on 16/3/14.
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hands.h"

@interface Human : NSObject

{
    NSString * _name;
    Hand * _rightHand;
    Hand * _leftHand;
}

-(instancetype)initWithName:(NSString *)name
                   andRight:(Hand *)handR
                   andLeft:(Hand *)handL;

-(void)show;
-(void)change;

@end



@end
