//
//  BUPlaneDirector.m
//  Design4OC
//
//  Created by vshiron on 17/4/1.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "BUPlaneDirector.h"

@implementation BUPlaneDirector
-(BUPlane *)constructPlane:(id<BUPlaneBuilder>)builder{
    
    [builder builderBody];
    [builder builderWing];
    [builder builderTail];
    
    return [builder builderPlane];
    
}
@end
