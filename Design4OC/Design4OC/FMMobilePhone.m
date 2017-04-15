//
//  FMMobilePhone.m
//  Design4OC
//
//  Created by vshiron on 17/4/15.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "FMMobilePhone.h"

@implementation FMMobilePhone
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

@implementation FMIPhone@end

@implementation FMAndroid@end
