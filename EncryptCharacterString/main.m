//
//  main.m
//  EncryptCharacterString
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Encrypt.h"

#define numCount 100
int main(int argc, const char * argv[]) {
    char ch[numCount];
    NSLog(@"please enter words:");
    gets(ch);
    
    NSString *C = [NSString stringWithFormat:@"%s",ch];
    
    NSString *Cget=[Encrypt Encrypt:C];
    
    NSLog(@"%@",Cget);
    
    
    return 0;
}
