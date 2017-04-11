//
//  Context.m
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "STContext.h"
@interface STContext()
@property (nonatomic , strong ) STContext *impl;
@end
@implementation STContext

+(instancetype)initWithIstragty:(id<IStrategy>)iStrategy{
    STContext * i =  [[STContext alloc] init];
    i.impl = iStrategy;
    return i;
    
}
-(void)operate{
    
    [self.impl operate];
}
@end
