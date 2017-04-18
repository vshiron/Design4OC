//
//  FWWebSite.h
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FWWebSiteProtocol.h"
@interface FWWebSite : NSObject<FWWebSiteProtocol>
-(instancetype)initWithWebName:(NSString*)name;
@end
