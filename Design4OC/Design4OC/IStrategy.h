//
//  IStrategy.h
//  Design4OC
//
//  Created by vshiron on 17/3/29.
//  Copyright © 2017年 Apress. All rights reserved.
//
/*
 此处的STFly可以替换成Swimming或者Running
 STContext * is = [STContext implWithIstragty:[[STFly alloc]init]];
 NSLog(@"%@",is);
 [is operate];
 */

#import <Foundation/Foundation.h>

@protocol IStrategy <NSObject>
-(void)operate;
@end
