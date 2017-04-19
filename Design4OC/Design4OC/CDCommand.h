//
//  CDCommand.h
//  Design4OC
//
//  Created by vshiron on 17/4/11.
//  Copyright © 2017年 Apress. All rights reserved.
//  命令

#import <Foundation/Foundation.h>
#import "CDWarship.h"

//该协议用来声明操作的接口
@protocol CommandProtocol<NSObject>
-(void)excuteCommand;
@end


@interface CDCommand : NSObject<CommandProtocol>
//命令下达给某军舰,一切攻击由它发起
-(instancetype)initWithWarship:(CDWarship*)warship;
@end
//攻击潜艇命令
@interface CDAttackShipCommand : CDCommand @end
//攻击飞机命令
@interface CDAttackAirplaneCommand : CDCommand @end

@interface CDDefenseCommand : CDCommand @end
