//
//  CDMasters.h
//  Design4OC
//
//  Created by vshiron on 17/4/11.
//  Copyright © 2017年 Apress. All rights reserved.
//  司令官,陆军统帅,这个Masters可以又其他类充当,因为该类并不会直接偶合Warship类
//  简单的来说,是谁来统领战争都是允许的,该类型作为命令的发送者,调用Command中的excuteCommand方法

#import <Foundation/Foundation.h>
#import "CDCommand.h"
@interface CDMasters : NSObject
//带多一个属性可以设置联合攻击,否则每次一设置攻击后都要调用notify不太方便
@property (nonatomic , strong ) NSMutableArray<id<CommandProtocol>> *commandes;
-(void)setOrders:(id<CommandProtocol>)command;
-(void)notify;
@end
