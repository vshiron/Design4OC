//
//  BRAbstractPeople.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRAbstractPeople.h"
#define MASMethodNotImplemented() \
@throw [NSException exceptionWithName:NSInternalInconsistencyException \
reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] \
userInfo:nil]
@implementation BRAbstractPeople
- (id)init {
    NSAssert(![self isMemberOfClass:[BRAbstractPeople class]], @"BRAbstractPeople is an abstract class, you should not instantiate it directly.");
    return [super init];
}
-(void)run{MASMethodNotImplemented();}
@end
