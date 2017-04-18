//
//  MEMediator.h
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//  中介者类

#import <Foundation/Foundation.h>
#import "MEStudent.h"
@class MEStudent;
@interface MEMediator : NSObject
-(void)send:(NSString*)message toStudent:(MEStudent*)studnet;
@property (nonatomic , strong ) MEStudent *studentA;
@property (nonatomic , strong ) MEStudent *studentB;
@end
