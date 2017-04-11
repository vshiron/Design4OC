//
//  PRHousekeeper.m
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "PRHousekeeper.h"
@interface PRHousekeeper()
@property (nonatomic , strong ) PRMaster *master;
@end
@implementation PRHousekeeper
-(void)buyClothes{
    if (_master == nil) {
        _master = [[PRMaster alloc] init];
    }
    [_master buyClothes];
    NSLog(@"接受到请求,立刻去买衣服");
}
-(void)buyShoes{
    if (_master == nil) {
        _master = [[PRMaster alloc] init];
    }
    [_master buyShoes];
    NSLog(@"接受到请求,立刻去买鞋子");
}
@end
