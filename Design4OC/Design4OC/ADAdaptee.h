//
//  ADAdaptee.h
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//  需要做适配的特殊类(即和业务需求中类的接口不一致,需要协调的类),可以理解为电路的三插头准备转为二插头

#import <Foundation/Foundation.h>

@interface ADAdaptee : NSObject
-(void)specialRequest;
@end
