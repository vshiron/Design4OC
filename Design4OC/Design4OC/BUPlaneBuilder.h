//
//  BUBuilder.h
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
//
/*
 定义:
 将一个复杂的对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
 
 应用:
 1.当创建复杂对象的算法应该独立于该对象的组成部分以及它们的装配方式时;
 2.当构造过程必须允许被构造的对象有不同表示时
 
 */
#import <Foundation/Foundation.h>
#import "BUPlane.h"
@protocol BUPlaneBuilder <NSObject>
//body机身,wing机翼,tail机尾
-(void)builderBody;
-(void)builderWing;
-(void)builderTail;

//装配完成后最终产品
-(BUPlane*)builderPlane;
@end
