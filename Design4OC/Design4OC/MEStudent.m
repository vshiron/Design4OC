//
//  MEStudent.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "MEStudent.h"

@implementation MEStudent
-(instancetype)initWithMediator:(MEMediator *)mediator{
    self = [super init];
    if (self) {
        _mediator = mediator;
    }
    return self;
}
-(void)send:(NSString*)content{
    [_mediator send:content toStudent:self];
}
-(void)message:(NSString*)content{}
@end


@implementation MEStudentA

-(void)message:(NSString *)content{
    NSLog(@"学生A得到了小纸条:%@",content);
}

@end

@implementation MEStudentB
-(void)message:(NSString *)content{
    NSLog(@"学生B得到了小纸条:%@",content);
}



@end
