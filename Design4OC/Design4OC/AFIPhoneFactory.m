//
//  AFIPhoneFactory.m
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "AFIPhoneFactory.h"
#import "AFAFNetworkingTool.h"
#import "AFSQLiteTool.h"
@implementation AFIPhoneFactory
-(id<AFRequestTool>)creatRequestTool{
    return [[AFAFNetworkingTool alloc] init];
}
-(id<AFDatabasesTool>)creatDatabasesTool{
    return [[AFSQLiteTool alloc] init];
}
@end
