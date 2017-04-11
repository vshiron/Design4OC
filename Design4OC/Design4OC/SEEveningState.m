//
//  SEEveningState.m
//  Design4OC
//
//  Created by vshiron on 17/4/7.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "SEEveningState.h"
#import "SEContext.h"
#import "SEMorningState.h"
@implementation SEEveningState
-(void)handle:(SEContext *)context{
    context.state = [[SEMorningState alloc] init];
}
@end
