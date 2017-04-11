//
//  Action.h
//  Design
//
//  Created by vshiron on 17/3/29.
//  Copyright © 2017年 Apress. All rights reserved.
//  动物的抽象接口
/*
 模板方法模式,定一个操作中的算法骨架,而将一些步骤延迟到子类中
 模板方法使得子类不可用改变一个算法的结构即可从定义该算法的某些特定步骤
 模板方法主要是提供了一个很好的代码复用平台
 其实感觉和策略模式非常相似,但实质上模板方法模式更善于对基类方法重复代码的抽取,策略模式更优于算法的灵活改变!

 Cat * cat = [[Cat alloc]init];
 [cat eat];
 [cat run];
 [cat alive];
 
 Dog* dog =   [[Dog alloc] init];
 [dog eat];
 [dog run];
 [dog alive];
 */

#import <Foundation/Foundation.h>

@protocol TMAction <NSObject>
-(void)run;
-(void)eat;
-(void)sleep;
@end
