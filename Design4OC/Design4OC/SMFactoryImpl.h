//
//  SMFactoryImpl.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMMobilePhone.h"

typedef enum : NSInteger{
    IPhone,
    Android,
}IPhoneType;

@protocol SMFactory <NSObject>
+(SMMobilePhone*)creatFactoryWithType:(IPhoneType)type;
@end
@interface SMFactoryImpl : NSObject<SMFactory>

@end
