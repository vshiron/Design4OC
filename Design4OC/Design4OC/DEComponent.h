//
//  Component.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//  组装接口
/*
 NSLog(@"---最新出厂---");
 DEBaseCar * car = [[DEBaseCar alloc] init];
 NSLog(@"---生产沙发,疝气灯,狗---");
 DESofaDecorator * sofaDecorator = [[DESofaDecorator alloc] init];
 DELightDecorator * lightDecorator = [[DELightDecorator alloc] init];
 DEDogDecorator * dogDecorator = [[DEDogDecorator alloc] init];
 //设置狗的名字
 [dogDecorator setName:@"旺财"];
 NSLog(@"开始装饰,将需要的东西组装到车上");
 [sofaDecorator setComponent:car];
 [lightDecorator setComponent:sofaDecorator];
 [dogDecorator setComponent:lightDecorator];
 NSLog(@"---------------------");
 [dogDecorator operation];

 
 */
#import <Foundation/Foundation.h>

@protocol DEComponent <NSObject>
-(void)operation;
@end
