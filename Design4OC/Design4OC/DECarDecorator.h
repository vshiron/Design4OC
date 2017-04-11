//
//  DECarComponent.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//
/*
 DECarDecorator:装饰者,所有的装饰内容都要继承它
 DESofaDecorator:沙发
 DELightDecorator:疝气灯
 DEDogDecorator:狗
 */
#import <Foundation/Foundation.h>
#import "DEComponent.h"
@interface DECarDecorator : NSObject<DEComponent>
@property (nonatomic , strong ) id<DEComponent> component;

@end

/*------------------作为装饰汽车的沙发(不含参数和方法)--------------------*/
@interface DESofaDecorator : DECarDecorator
@end
/*------------------作为装饰汽车的疝气灯(含私有方法)--------------------*/
@interface DELightDecorator : DECarDecorator
@end
/*------------------作为装饰汽车的养狗(含共有属性)--------------------*/
@interface DEDogDecorator : DECarDecorator
@property (nonatomic , strong ) NSString *name;
@end
