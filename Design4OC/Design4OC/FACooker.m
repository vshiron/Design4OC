//
//  FACooker.m
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "FACooker.h"
#import "FAFood.h"
@interface FACooker()
@property (nonatomic , strong ) FAFoodA *foodA;
@property (nonatomic , strong ) FAFoodB *foodB;
@property (nonatomic , strong ) FAFoodC  *foodC;
@property (nonatomic , strong ) FAFoodD *foodD;


@end
@implementation FACooker
- (instancetype)init
{
    self = [super init];
    if (self) {
        _foodA = [[FAFoodA alloc]init];
        _foodB = [[FAFoodB alloc]init];
        _foodC = [[FAFoodC alloc]init];
        _foodD = [[FAFoodD alloc]init];
    }
    return self;
}

-(void)methodA{
    NSLog(@"--------组合方法A-------");
    [_foodA methodOne];
    [_foodD methodFour];
}
-(void)methodB{
    NSLog(@"--------组合方法B-------");
    [_foodB methodTwo];
    [_foodC methodThree];
    [_foodD methodFour];
}
@end
