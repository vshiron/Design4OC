//
//  CDMasters.m
//  Design4OC
//
//  Created by vshiron on 17/4/11.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "CDMasters.h"
@interface CDMasters()

@end
@implementation CDMasters
- (instancetype)init
{
    self = [super init];
    if (self) {
        _commandes = [NSMutableArray array];
    }
    return self;
}
-(void)setOrders:(id<CommandProtocol>)command{
    [_commandes addObject:command];
}
-(void)notify{
   [_commandes enumerateObjectsUsingBlock:^(id<CommandProtocol>  _Nonnull command, NSUInteger idx, BOOL * _Nonnull stop) {
       [command excuteCommand];
   }];
}
@end
