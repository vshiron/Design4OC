//
//  PRVendor.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//  委托类

#import <Foundation/Foundation.h>
#import "PRSell.h"


@interface PRVendor : NSObject
//其实这两种写法,其实都是一样的~
-(instancetype)initWithDelegate:(id<PRSell>)delegate;
@property (nonatomic , weak ) id<PRSell> delegate;

//启动响应sell和ad...方法
-(void)send;

@end
