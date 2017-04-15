//
//  SMFactoryImpl.m
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "SMFactoryImpl.h"
@implementation SMFactoryImpl


+(SMMobilePhone *)creatMobileWithType:(IPhoneType)type{
    
    switch (type) {
        case IPhone:
            return [[SMIPhone alloc]init];
            break;
        case Android:
            return [[SMAndroid alloc]init];
            break;
    }
}
@end
