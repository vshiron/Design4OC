//
//  SISingleton.m
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static id _instance;

/**
 *  alloc方法内部会调用这个方法
 */

/*
+ (id)allocWithZone:(struct _NSZone *)zone
{
    if (_instance == nil) { // 防止频繁加锁
        @synchronized(self) {
            if (_instance == nil) { // 防止创建多次
                _instance = [super allocWithZone:zone];
            }
        }
    }
    return _instance;
}

+ (instancetype)sharedSingleton
{
    if (_instance == nil) { // 防止频繁加锁
        @synchronized(self) {
            if (_instance == nil) { // 防止创建多次
                _instance = [[self alloc] init];
            }
        }
    }
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}
*/



 - (instancetype)init
 {
     static dispatch_once_t onceToken;
     dispatch_once(&onceToken, ^{
         if ((self == [super init])) {
 
         }
     });
     return self;
 }
 
 +(instancetype)allocWithZone:(struct _NSZone *)zone{
     static dispatch_once_t onceToken;
     dispatch_once(&onceToken, ^{
         _instance = [super allocWithZone:zone];
     });
     return _instance;
 }
 
 +(instancetype)sharedSingleton{
     static dispatch_once_t onceToken;
     dispatch_once(&onceToken, ^{
         _instance = [[self alloc]init];
     });
     return _instance;
 }
 
 +(instancetype)copyWithZone:(struct _NSZone *)zone{
     return _instance;
 }
 
 +(instancetype)mutableCopyWithZone:(struct _NSZone *)zone{
     return _instance;
 }
 
 -(instancetype)copyWithZone:(struct _NSZone *)zone{
     return _instance;
 }
 
 -(instancetype)mutableCopyWithZone:(struct _NSZone *)zone{
     return _instance;
 }
 

@end
