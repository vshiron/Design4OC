//
//  PRSell.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//  好吧,代理你们比我还熟,用白话来说就是:让中间类来帮忙做事,自己不做...
//  这里的例子是我们最常用和最常见的例子

/*

 PRVendor* vendor = [[PRVendor alloc] init];
 PRBusinessAgent* agent = [[PRBusinessAgent alloc]init];
 vendor.delegate = agent;
 //启动代理方法
 [vendor send];
 

*/

#import <Foundation/Foundation.h>

@protocol PRSell <NSObject>
-(void)sell;
-(void)advertising;
@end
