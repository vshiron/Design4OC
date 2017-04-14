//
//  SMMobilePhone.m
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "SMMobilePhone.h"

@implementation SMMobilePhone
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@类初始化中",self.class);
    }
    return self;
}
-(void)useCall{
    NSLog(@"使用%@,呼叫10086中...",self.class);
    
}

@end

@implementation SMIPhone@end

@implementation SMAndroid@end
