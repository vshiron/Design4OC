//
//  SEAfternoonState.m
//  Design4OC
//
//  Created by vshiron on 17/4/7.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "SEAfternoonState.h"
#import "SEContext.h"
#import "SEEveningState.h"
@implementation SEAfternoonState
-(void)handle:(SEContext *)context{
    context.state = [[SEEveningState alloc] init];
}

@end
