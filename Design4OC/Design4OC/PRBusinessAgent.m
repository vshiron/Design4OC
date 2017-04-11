//
//  PRBusinessAgent.m
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "PRBusinessAgent.h"
@interface PRBusinessAgent()
@property (nonatomic , strong ) PRVendor *vendor;
@end
@implementation PRBusinessAgent


-(void)sell{
    NSLog(@"销售产品...");
}
-(void)advertising{
    NSLog(@"广告推广...");
}

@end
