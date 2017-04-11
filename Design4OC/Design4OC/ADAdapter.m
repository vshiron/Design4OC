//
//  ADAdapter.m
//  Design4OC
//
//  Created by vshiron on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "ADAdapter.h"

@implementation ADAdapter
-(void)request{
    [super specialRequest];
    NSLog(@"模式1:接口转换完成");
}
@end



@interface ADAdapterExtra()
@property (nonatomic , strong ) ADAdaptee *adaptee;
@end
@implementation ADAdapterExtra

-(instancetype)initWhitADAdaptee:(ADAdaptee *)adaptee{
    
    self = [super init];
    if (self) {
        _adaptee = adaptee;
    }
    return self;
}
-(void)request{
    [_adaptee specialRequest];
    NSLog(@"模式2:接口转换完成");
}
@end
