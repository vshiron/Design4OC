//
//  BRAbstractPeople.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRAbstractPeople.h"
#import "Common.h"
@implementation BRAbstractPeople
- (id)init {
    NSAssert(![self isMemberOfClass:[BRAbstractPeople class]], @"BRAbstractPeople is an abstract class, you should not instantiate it directly.");
    return [super init];
}
-(void)run{MASMethodNotImplemented();}
@end

@implementation BRMan
-(void)run{
    NSLog(@"男人在开");
    [self.road run];
}
@end
@implementation BRWoman
-(void)run{
    NSLog(@"女人在开");
    [self.road run];
}
@end
