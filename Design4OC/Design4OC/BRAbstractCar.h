//
//  BRAbstractCar.h
//  Design4OC
//
//  Created by vshiron on 17/4/5.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BRCarProtocol
-(void)run;
@end
@interface BRAbstractCar : NSObject<BRCarProtocol>

@end


@interface BRCar : BRAbstractCar@end

@interface BRBus : BRAbstractCar@end
