//
//  OBESubjectProtocol.h
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

/*
 还没想到用简单的效果去实现通知中心或者KVO的方法
 OBEStudentX * x = [[OBEStudentX alloc] init];
 [[NSNotificationCenter defaultCenter] addObserver:x selector:@selector(notify) name:@"x.update" object:nil];
 NSNotification * noti = [NSNotification notificationWithName:@"x.update" object:nil];
 [[NSNotificationCenter defaultCenter] postNotification:noti];
 [[NSNotificationCenter defaultCenter] removeObserver:x];

 
 */

#import <Foundation/Foundation.h>

@protocol OBESubjectProtocol <NSObject>
-(void)notify;
@end
