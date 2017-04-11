//
//  AFRequestFactory.h
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFRequestTool.h"
#import "AFDatabasesTool.h"
@protocol AFFactory <NSObject>
-(id<AFRequestTool>)creatRequestTool;
-(id<AFDatabasesTool>)creatDatabasesTool;
@end
