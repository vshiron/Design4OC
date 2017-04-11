//
//  OBStudentA.m
//  Design4OC
//
//  Created by vshiron on 17/4/4.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "OBStudentA.h"

@implementation OBStudentA
-(void)update{
    NSLog(@"---------cla:%@  Sel: %@ ----------",self.class,NSStringFromSelector(_cmd));
}
@end
