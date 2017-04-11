//
//  OBObserver.m
//  Design4OC
//
//  Created by vshiron on 17/4/4.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "OBObserver.h"
@interface OBObserver()

@property (nonatomic , copy ) NSString *name;
@property (nonatomic , weak ) OBSubject *subject;

@end
@implementation OBObserver
- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}
-(instancetype)initWhitSubject:(OBSubject *)subject AndName:(NSString *)name{
    
    self = [self init];
    if (self) {
        self.name = name;
        self.subject = subject;
    }
    return self;
}
-(void)update{
//    NSAssert(self.class != [OBObserver class], @"抽象基类,不允许直接使用,请用子类重写协议中的方法");
    NSLog(@"----%@----",self.name);
}
@end
