//
//  FMMobilePhoneFactory.h
//  Design4OC
//
//  Created by vshiron on 17/4/15.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMMobilePhone.h"
@class FMMobilePhoneFactory;
@protocol FMFactoryProtocol<NSObject>
-(FMMobilePhone*)creatFactory;
@end
//工厂基类
@interface FMMobilePhoneFactory : NSObject<FMFactoryProtocol>

@end
//苹果工厂,继承工厂基类
@interface FMIPhoneFactory : FMMobilePhoneFactory
@end
//安卓工厂,继承工厂基类
@interface FMAndroidFactory : FMMobilePhoneFactory
@end
