//
//  main.m
//  4
//  Copyright © 2016年 Shana. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSArray *arr = @[@"Hello everyone", @"Welcom to my github", @"Yes,I am a good man", @"Hackers and Painters", @"What a wonderful world"];
    NSArray *a = [arr  sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2)
    {
        return ([obj1 compare:obj2]==NSOrderedDescending?NSOrderedDescending:NSOrderedSame);
    }];
    NSLog(@"sortArray1:%@", a);
    return 0;
}
