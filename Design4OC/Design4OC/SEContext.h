//
//  SEContext.h
//  Design4OC
//
//  Created by vshiron on 17/4/7.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SEOneDayState.h"
@interface SEContext : NSObject
@property (nonatomic , strong) id<SEOneDayState> state;
-(instancetype)initWithState:(id<SEOneDayState>)state;
-(void)request;

@end
