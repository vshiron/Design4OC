//
//  SMMobilePhone.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//
/*

 
 */
#import <Foundation/Foundation.h>
//手机基类
@interface SMMobilePhone : NSObject
-(void)useCall;
@end
//苹果,继承手机基类
@interface SMIPhone : SMMobilePhone
@end
//安卓,继承手机基类
@interface SMAndroid : SMMobilePhone
@end
