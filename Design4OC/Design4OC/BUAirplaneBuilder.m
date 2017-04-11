//
//  BUAirplaneBuilder.m
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
//  民航飞机

#import "BUAirplaneBuilder.h"
@interface BUAirplaneBuilder()
@property (nonatomic , strong ) BUPlane *plane;

@end
@implementation BUAirplaneBuilder
- (instancetype)init
{
    self = [super init];
    if (self) {
        _plane = [[BUPlane alloc] init];
    }
    return self;
}
-(void)builderBody{
     [_plane addPlanePart:@"民航飞机部件:身体"];
   
}
-(void)builderWing{
     [_plane addPlanePart:@"民航飞机部件:机翼"];

}
-(void)builderTail{
     [_plane addPlanePart:@"民航飞机部件:机尾"];
}
-(BUPlane *)builderPlane{
    if (self.plane != nil) {
        return _plane;
    }
    
    return nil;
}
@end
