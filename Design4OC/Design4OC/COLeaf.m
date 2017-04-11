//
//  COLeaf.m
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "COLeaf.h"

@implementation COLeaf
@synthesize name = _name;
-(id<COComponent>)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}


-(void)add:(id<COComponent>)component{
    NSAssert(false, @"由于是叶子节点,不能添加");
}
-(void)remove:(id<COComponent>)component{
    NSAssert(false, @"由于是叶子节点,不能移除");
}
-(void)display:(int)depth{
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < depth; i++) {
        [str appendString:@"-"];
    }
    NSLog(@"%@%@",str , _name);
}

@end
