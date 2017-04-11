//
//  SEMorningState.m
//  Design4OC
//
//  Created by vshiron on 17/4/7.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "SEMorningState.h"
#import "SEContext.h"
#import "SEAfternoonState.h"
@implementation SEMorningState
-(void)handle:(SEContext *)context{
    context.state = [[SEAfternoonState alloc]init];
}
@end
