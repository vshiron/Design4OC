//
//  BRStreet.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BRStreet.h"

@implementation BRStreet
-(void)run{
    [super run];
    [self.car run];
    NSLog(@"沿着市区街道行驶");
}
@end
