//
//  main.m
//  Practice
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"
#import "Broad.h"
#import "Branch.h"

int main(int argc, const char * argv[]) {
    Tools *tool=[[Tools alloc] init];
    NSArray *arr=[tool getBroads:@"http://rss.sina.com.cn/sina_all_opml.xml"];
    NSString *strToSearch=@"女性";
    
    Broad *broad=nil;
    for (Broad *b in arr) {
        NSRange range=[b.title rangeOfString:strToSearch];
        if (range.location!=NSNotFound) {
            broad=b;
            break;
        }
    }
    
    if (broad!=nil) {
        NSLog(@"%@",broad.title);
        NSLog(@"分支数量：%lu",broad.branches.count);
        for (Branch *branForOutput in broad.branches) {
            NSLog(@"\t%@",branForOutput.title);
            NSLog(@"\t%@",branForOutput.xmlUrl);
            NSLog(@"---------------------------");
        }
    }
    else
    {
        NSLog(@"对不起，暂时无此板块");
    }
    return 0;
}
