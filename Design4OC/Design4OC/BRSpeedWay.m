//
//  BRSpeedWay.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRSpeedWay.h"

@implementation BRSpeedWay
-(void)run{
    [super run];
    [self.car run];
    NSLog(@"沿着高速道路行驶");
}
@end
