//
//  BRAbstractRoad.h
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BRAbstractCar.h"
@protocol BRRoadProtocol

-(void)run;
@end
@interface BRAbstractRoad : NSObject<BRRoadProtocol>
@property (nonatomic , strong) BRAbstractCar* car;
@end
