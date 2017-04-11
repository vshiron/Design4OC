//
//  MEMemento.m
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "MEMemento.h"
@interface MEMemento()
@property (nonatomic , strong ) NSString *state;

@end
@implementation MEMemento
-(instancetype)initWithState:(NSString *)state{
    self = [super init];
    if (self) {
        self.state = state;
    }
    return self;
}
@end
