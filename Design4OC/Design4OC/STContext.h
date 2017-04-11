//
//  Context.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//  上下文,用来对策略(算法)的引用,使用初始化方法initWithIstragty赋值id<IStrategy>引用

#import <Foundation/Foundation.h>
#import "IStrategy.h"
@interface STContext : NSObject<IStrategy>
+(instancetype)initWithIstragty:(id<IStrategy>)iStrategy;
@end
