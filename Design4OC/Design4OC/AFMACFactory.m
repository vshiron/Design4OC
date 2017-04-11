//
//  AFMACFactory.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "AFMACFactory.h"
#import "AFCoreDataTool.h"
#import "AFASIHTTPRequestTool.h"
@implementation AFMACFactory

-(id<AFRequestTool>)creatRequestTool{
    return  [[AFASIHTTPRequestTool alloc] init];
}
-(id<AFDatabasesTool>)creatDatabasesTool{
    return [[AFCoreDataTool alloc]init];
}
@end
