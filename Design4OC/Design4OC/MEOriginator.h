//
//  MEOriginator.h
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//  发起人类

#import <Foundation/Foundation.h>
#import "MEMemento.h"
@interface MEOriginator : NSObject
//需要保持的属性,可以有多个
@property (nonatomic , strong ) NSString *state;
@property (nonatomic , strong ) MEMemento *memento;
//实例化一个对象,并在里面保存状态信息
-(MEMemento*)creatMemento;
-(void)show;
@end
