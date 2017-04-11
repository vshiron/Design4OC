//
//  SISingleton.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//  好像不太严谨?求赐教
/*
 
 Singleton* s = [[Singleton alloc] init];
 Singleton* s2 =  [Singleton sharedSingleton];
 Singleton* s3 = [[Singleton alloc] init];
 NSLog(@"%s",s==s2 ? "true":"false");
 NSLog(@"%s",s2==s3 ? "true":"false");
 
 */
#import <Foundation/Foundation.h>

@interface Singleton : NSObject
+ (instancetype)sharedSingleton;
@end
