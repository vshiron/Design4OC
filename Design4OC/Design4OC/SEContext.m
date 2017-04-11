//
//  SEContext.m
//  Design4OC
//
//  Created by vshiron on 17/4/7.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "SEContext.h"

@implementation SEContext
-(instancetype)initWithState:(id<SEOneDayState>)state{
    self = [super init];
    if (self) {
        self.state = state;
    }
    return self;
}
-(void)request{
    [self.state handle:self];
}
-(void)setState:(id<SEOneDayState>)state{
    _state = state;
    NSLog(@"切换模式:%@",[state class]);
}
@end
