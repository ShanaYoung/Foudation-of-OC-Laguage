//
//  Tools.m
//  day24_oc_pra
//  Copyright © 2016年 Shana. All rights reserved.
//

#import "Tools.h"
#import "GDataXMLNode.h"
#import "Broad.h"
#import "Branch.h"
@implementation Tools

-(NSArray *)getBroads:(NSString *)urlStr
{
    NSData *data=[[NSData alloc] initWithContentsOfURL:[[NSURL alloc] initWithString:urlStr]];
    GDataXMLDocument *doc=[[GDataXMLDocument alloc] initWithData:data options:0 error:nil];
    GDataXMLElement *root=[doc rootElement];
    
    //body下有多少个outline节点，就有多少个板块
    NSArray *outline_1=[[root elementsForName:@"body"].firstObject elementsForName:@"outline"];
    NSMutableArray *broads=[[NSMutableArray alloc] init];
    
    //创建板块
    for (GDataXMLElement *out_1 in outline_1) {
        Broad *broad=[[Broad alloc] init];
        broad.title=[[out_1 attributeForName:@"title"] stringValue];
        broad.text=[[out_1 attributeForName:@"text"] stringValue];
        
        broad.branches=[[NSMutableArray alloc] init];
        //outline下的所有的第二层outline
        NSArray *out_2=[out_1 children];
        NSLog(@"%lu",out_2.count);
        
        //有多少个孩子，就有多少个分支
        //创建该板块的分支
        for (GDataXMLElement *e in out_2) {
            Branch *bran_2=[[Branch alloc] init];
            bran_2.title=[[e attributeForName:@"title"] stringValue];
            bran_2.text=[[e attributeForName:@"text"] stringValue];
            bran_2.xmlUrl=[[e attributeForName:@"xmlUrl"] stringValue];
            bran_2.htmlUrl=[[e attributeForName:@"htmlUrl"] stringValue];
            
            //分支添加到板块中
            [broad.branches addObject:bran_2];
        }
        //板块添加到数组中
        [broads addObject:broad];
    }
    return broads;
}


@end
