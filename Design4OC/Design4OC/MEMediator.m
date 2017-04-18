//
//  MEMediator.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "MEMediator.h"

@implementation MEMediator
-(void)send:(NSString*)message toStudent:(MEStudent*)studnet;{
    
    
    if (_studentA == studnet ) {
        [_studentB message:message];
    } else if( _studentB == studnet){
        [_studentA message:message];
    }
}
@end
