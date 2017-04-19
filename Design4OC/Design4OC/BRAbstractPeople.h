//
//  BRAbstractPeople.h
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BRAbstractRoad.h"
@protocol BRPeopleProtocol
-(void)run;
@end
@interface BRAbstractPeople : NSObject<BRPeopleProtocol>
@property (nonatomic , strong ) BRAbstractRoad *road;
@end

@interface BRMan : BRAbstractPeople@end
@interface BRWoman : BRAbstractPeople@end
