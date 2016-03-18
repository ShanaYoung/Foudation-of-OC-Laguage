//
//  Encrypt.m
//  day14oc_hk
//  Copyright © 2016年 Shana. All rights reserved.
//

#import "Encrypt.h"

@implementation Encrypt

+(NSString *)Encrypt:(NSString *)pwd
{
    NSMutableString *cipher=[[NSMutableString alloc] init];
        for (int i=0; i<pwd.length; i++)
        {
            char c=[pwd characterAtIndex:i];
            
            //判断小写，进行位移3位加密
            if((c>='a'&&c<='z'))
            {
                
                //计算加密后应该是第几位字母
                char ch=(c-'a'+3)%26+'a';
                NSString *newCh=[NSString stringWithFormat:@"%c",ch];
                [cipher appendString:newCh];
            }
            
            //判断大写，进行位移3位加密
            else if (c>='A'&&c<='Z')
            {
                char ch=(c-'A'+3)%26+'A';
                NSString *newCh=[NSString stringWithFormat:@"%c",ch];
                [cipher appendString:newCh];
            }
            
            //不是大写也不是小写，无需加密直接加进加密字符串中
            else
            {
                NSString *anoChar=[NSString stringWithFormat:@"%c",c];
                [cipher appendString:anoChar];
            }
        }
    
    
    return cipher;
}


@end
