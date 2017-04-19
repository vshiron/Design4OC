//
//  BRAbstractCar.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRAbstractCar.h"
#import "Common.h"
@implementation BRAbstractCar
- (id)init {
    NSAssert(![self isMemberOfClass:[BRAbstractCar class]], @"BRAbstractCar is an abstract class, you should not instantiate it directly.");
    return [super init];
}
-(void)run{MASMethodNotImplemented();}
@end

@implementation BRCar
-(void)run{
    [super run];
    NSLog(@"小汽车");
}
@end

@implementation BRBus
-(void)run{
    [super run];
    NSLog(@"公交车");
}
@end
