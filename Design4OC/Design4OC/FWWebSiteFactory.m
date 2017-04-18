//
//  FWWebSiteFactory.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "FWWebSiteFactory.h"
@interface FWWebSiteFactory()
@property (nonatomic , strong ) NSMutableDictionary<NSString*,FWWebSite*> *webSites;

@end
@implementation FWWebSiteFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _webSites = [[NSMutableDictionary alloc]init];
    }
    return self;
}
-(FWWebSite *)getWebSiteCategory:(NSString *)key{
    if ([[_webSites allKeys] containsObject:key]) {
        return [_webSites objectForKey:key];
    }
    FWWebSite* webSite = [[FWWebSite alloc]initWithWebName:key];
   
    [_webSites setObject:webSite forKey:key];
    return webSite ;
}
-(int)getWebSiteCount{

    return (int)_webSites.count;
}

@end
