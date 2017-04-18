//
//  FWWebSiteProtocol.h
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FWUser;
@protocol FWWebSiteProtocol <NSObject>
-(void)use:(FWUser*)user;
@end
