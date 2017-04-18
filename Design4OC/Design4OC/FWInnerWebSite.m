//
//  FWInnerWebSite.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "FWInnerWebSite.h"
#import "FWUser.h"
@interface FWInnerWebSite()
@property (nonatomic , strong ) NSString *name;
@end
@implementation FWInnerWebSite
-(instancetype)initWithWebName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
-(void)use:(FWUser *)user{
    NSLog(@"网站分类:%@>>>>>>>用户名:%@",_name,user.name);
}
@end
