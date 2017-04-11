//
//  Animal.h
//  Design
//
//  Created by vshiron on 17/3/29.
//  Copyright © 2017年 Apress. All rights reserved.
//  该类为抽象基类,所以动物都应该继承该类,该类实现了Action接口,另外有一个属于自己的方法alive,该方法只是为了更好的抽取重复代码使用

#import <Foundation/Foundation.h>
#import "TMAction.h"
@interface TMAnimal : NSObject<TMAction>
-(void)alive;
@end
