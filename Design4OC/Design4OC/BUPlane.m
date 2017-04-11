//
//  BUPlane.m
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BUPlane.h"

@implementation BUPlane

- (instancetype)init
{
    self = [super init];
    if (self) {
        _parts = [NSMutableArray array];
    }
    return self;
}
-(void)addPlanePart:(NSString *)part{
    [_parts addObject:part];
}
-(void)show{
    [_parts enumerateObjectsUsingBlock:^(NSString * _Nonnull part, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"组成部件有:%@",part);
    }];
}

@end
