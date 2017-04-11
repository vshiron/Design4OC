//
//  CDMasters.m
//  Design4OC
//
//  Created by vshiron on 17/4/11.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "CDMasters.h"
@interface CDMasters()
@property (nonatomic , strong ) CDCommand *command;

@end
@implementation CDMasters
-(void)setOrder:(CDCommand *)command{
    self.command = command;
}
-(void)notify{
    [self.command excuteCommand];
}
@end
