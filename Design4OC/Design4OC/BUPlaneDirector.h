//
//  BUPlaneDirector.h
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
//  Director:构造一个使用Builder协议的对象,指导构建过程

#import <Foundation/Foundation.h>
#import "BUPlaneBuilder.h"
#import "BUPlane.h"
@interface BUPlaneDirector : NSObject
-(BUPlane*)constructPlane:(id<BUPlaneBuilder>)builder;
@end
