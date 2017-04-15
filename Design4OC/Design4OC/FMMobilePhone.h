//
//  FMMobilePhone.h
//  Design4OC
//
//  Created by vshiron on 17/4/15.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMMobilePhone : NSObject
-(void)useCall;
@end
//苹果,继承手机基类
@interface FMIPhone : FMMobilePhone
@end
//安卓,继承手机基类
@interface FMAndroid : FMMobilePhone
@end
