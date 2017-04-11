//
//  Animal.m
//  Design
//
//  Created by vshiron on 17/3/29.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "TMAnimal.h"

@implementation TMAnimal

-(void)eat{
    NSLog(@"%@,吃东西",self.class);
}
-(void)run{
    NSLog(@"%@,跑步",self.class);
}
-(void)sleep{
    NSLog(@"%@,睡觉",self.class);
}
-(void)alive{
    NSLog(@"为了证明%@活着,让它吃跑睡试试看:",self.class);
    [self eat];
    [self run];
    [self sleep];
}

@end
