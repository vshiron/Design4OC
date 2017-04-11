//
//  OBSubjectProtocol.h
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OBObserverProtocol.h"

@protocol OBSubjectProtocol <NSObject>
-(void)attach:(id<OBObserverProtocol>)subject;
-(void)detach:(id<OBObserverProtocol>)subject;
-(void)notify;
@end
