//
//  MEMemento.h
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MEMemento : NSObject
//只能通过set方法设置state信息,隐藏set方法
@property (nonatomic , strong,readonly ) NSString *state;
-(instancetype)initWithState:(NSString*)state;
@end
