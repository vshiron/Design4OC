//
//  BUHelicopterBuilder.h
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
//  直升机

/*
 ConcreteBuilder：具体的建造者,实现Builder的接口以构造和装配该产品的各个部件
 */

#import <Foundation/Foundation.h>
#import "BUPlaneBuilder.h"
@interface BUHelicopterBuilder : NSObject<BUPlaneBuilder>

@end
