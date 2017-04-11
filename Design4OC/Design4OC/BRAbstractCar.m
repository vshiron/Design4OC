//
//  BRAbstractCar.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRAbstractCar.h"
#import <QuartzCore/CAAnimation.h>
#define MASMethodNotImplemented() \
@throw [NSException exceptionWithName:NSInternalInconsistencyException \
reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] \
userInfo:nil]
@implementation BRAbstractCar
- (id)init {
    NSAssert(![self isMemberOfClass:[BRAbstractCar class]], @"BRAbstractCar is an abstract class, you should not instantiate it directly.");
    return [super init];
}
-(void)run{MASMethodNotImplemented();}
@end
