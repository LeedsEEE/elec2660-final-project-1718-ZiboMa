//
//  DataModel.m
//  ZiboMa
//
//  Created by macbook on 2017/11/28.
//  Copyright © 2017年 university of leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.airplane=[NSMutableArray array];
        Flight* BY111=[[Flight alloc]init];
        BY111.height=111;
        BY111.wingspan=111;
        BY111.crudingrange=111;
        
        [self.airplane addObject:BY111];
    }
    return self;
}
@end
        
