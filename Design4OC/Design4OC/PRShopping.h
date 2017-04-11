//
//  PRShopping.h
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//  注意:在其他语言中,也会有这种设计方案:
//  即代理类获得委托类的引用(两者必须遵守同一协议),再调用引用的方法同名方法完成代理
//  此处用到的是安全(权限)代理,用来控制真实对象访问时的权限
//  原理是:主要是内部含有对委托类的引用! 所以才能顺利在内部调用委托类的方法!

/*
 PRHousekeeper* hk =  [[PRHousekeeper alloc] init];
 [hk buyClothes];
 [hk buyShoes];
 */
#import <Foundation/Foundation.h>
//买衣服,买鞋子
@protocol PRShopping <NSObject>
-(void)buyClothes;
-(void)buyShoes;
@end
