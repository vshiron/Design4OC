//
//  PRVendor.m
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//  供应商:不直接面对客户

#import "PRVendor.h"
@implementation PRVendor
/*----------代理模式1-------------*/
-(void)setDelegate:(id<PRSell>)delegate{
   _delegate= delegate;
}

-(instancetype)initWithDelegate:(id<PRSell>)delegate{
    self = [super init];
    if (self) {
        _delegate = delegate;
    }
    return self;
}


-(void)send{
    if ([self.delegate respondsToSelector:@selector(sell)]) {
        [self.delegate sell];
    }
    if ([self.delegate respondsToSelector:@selector(advertising)]) {
        [self.delegate advertising];
    }
    
}

@end
