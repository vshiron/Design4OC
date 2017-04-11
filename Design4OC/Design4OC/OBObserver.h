//
//  OBObserver.h
//  Design4OC
//
//  Created by vshiron on 17/4/4.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OBSubject.h"
#import "OBSubjectProtocol.h"
@interface OBObserver : NSObject<OBObserverProtocol>

-(instancetype)initWhitSubject:(id<OBSubjectProtocol>)subject AndName:(NSString*)name;
@end
