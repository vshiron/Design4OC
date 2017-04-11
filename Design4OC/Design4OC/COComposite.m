//
//  COComposite.m
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "COComposite.h"
@interface COComposite()
@property (nonatomic , strong ) NSMutableArray<id<COComponent>> *array;
@end
@implementation COComposite
@synthesize name = _name;
-(id<COComponent>)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
        _array = [NSMutableArray array];
    }
    return self;
}
-(void)add:(id<COComponent>)component{
    [_array addObject:component];
}
-(void)remove:(id<COComponent>)component{
    [_array removeObject:component];
}
-(void)display:(int)depth{
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < depth; i++) {
        [str appendString:@"-"];
    }
    
    NSLog(@"%@%@",str , _name);
    
    
    for (id<COComponent> component in _array) {
        [component display:(depth + 2)];
    }
}
@end
