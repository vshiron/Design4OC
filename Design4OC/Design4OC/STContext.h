//
//  Context.h
//  Design4OC
//
//  Created by vshiron on 17/3/30.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStrategy.h"
@interface STContext : NSObject<IStrategy>
+(instancetype)implWithIstragty:(id<IStrategy>)iStrategy;
@end
