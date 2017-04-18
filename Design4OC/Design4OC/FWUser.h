//
//  FWUser.h
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FWUser : NSObject
@property (nonatomic , strong ) NSString *name;
-(instancetype)initWithName:(NSString*)name;
@end
