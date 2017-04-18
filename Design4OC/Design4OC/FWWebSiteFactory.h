//
//  FWWebSiteFactory.h
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FWWebSite.h"
@interface FWWebSiteFactory : NSObject
-(FWWebSite*)getWebSiteCategory:(NSString*)key;
-(int)getWebSiteCount;
@end
