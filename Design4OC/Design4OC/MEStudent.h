//
//  MEStudent.h
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MEMediator.h"
@class  MEMediator;
@interface MEStudent : NSObject
@property (nonatomic , weak ) MEMediator *mediator;
//获得mediator对象引用
-(instancetype)initWithMediator:(MEMediator*)mediator;
-(void)send:(NSString*)content;
-(void)message:(NSString*)content;
@end


@interface MEStudentA : MEStudent
@end

@interface MEStudentB : MEStudent
@end
