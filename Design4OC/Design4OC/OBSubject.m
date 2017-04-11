//
//  OBSubject.m
//  Design4OC
//
//  Created by vshiron on 17/4/4.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "OBSubject.h"

@interface OBSubject()
@property (nonatomic , strong ) NSMutableArray<id<OBObserverProtocol>> *list;
@end
@implementation OBSubject
- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = [NSMutableArray array];
    }
    return self;
}

-(void)attach:(OBObserver*)subject{

    [_list addObject:subject];
    
}
-(void)detach:(OBObserver*)subject{

    [_list removeObject:subject];
    
}
-(void)notify{

    for (OBObserver* subject in _list) {
        [subject update];
    }
   
    
}
@end
