//
//  BRAbstractRoad.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRAbstractRoad.h"
#import "Common.h"
@interface BRAbstractRoad()
@end

@implementation BRAbstractRoad
- (id)init {
    NSAssert(![self isMemberOfClass:[BRAbstractRoad class]], @"BRAbstractRoad is an abstract class, you should not instantiate it directly.");
    return [super init];
}

-(void)run{MASMethodNotImplemented();}
@end
@implementation BRStreet
-(void)run{
    [super run];
    [self.car run];
    NSLog(@"沿着市区街道行驶");
}
@end
@implementation BRSpeedWay
-(void)run{
    [super run];
    [self.car run];
    NSLog(@"沿着高速道路行驶");
}
@end
