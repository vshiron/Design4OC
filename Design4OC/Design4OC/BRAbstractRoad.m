//
//  BRAbstractRoad.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRAbstractRoad.h"
#define MASMethodNotImplemented() \
@throw [NSException exceptionWithName:NSInternalInconsistencyException \
reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] \
userInfo:nil]
@interface BRAbstractRoad()

@end

@implementation BRAbstractRoad
- (id)init {
    NSAssert(![self isMemberOfClass:[BRAbstractRoad class]], @"BRAbstractRoad is an abstract class, you should not instantiate it directly.");
    return [super init];
}

-(void)run{MASMethodNotImplemented();}
@end
