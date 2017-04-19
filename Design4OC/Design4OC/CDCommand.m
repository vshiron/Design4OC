//
//  CDCommand.m
//  Design4OC
//
//  Created by vshiron on 17/4/11.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "CDCommand.h"
#import "Common.h"
@interface CDCommand()
@property (nonatomic , strong ) CDWarship *warship;
@end
@implementation CDCommand
-(instancetype)init{
    NSAssert(![self isMemberOfClass:[CDCommand class]], @"CDCommand is an abstract class, you should not instantiate it directly.");
    return  self;
}
-(instancetype)initWithWarship:(CDWarship *)warship{
    self = [self init];
    if (self) {
        self.warship = warship;
    }
    return [self init];
}
-(void)excuteCommand{
    MASMethodNotImplemented();
}
@end
//------------攻击潜艇命令
@implementation CDAttackShipCommand

-(void)excuteCommand{
    [self.warship attackShip];
}

@end

//-------------攻击飞机命令
@implementation CDAttackAirplaneCommand


-(void)excuteCommand{
    [self.warship attackAirplane];
}

@end
//防御命令
@implementation CDDefenseCommand

-(void)excuteCommand{
    [self.warship defense];
}

@end
