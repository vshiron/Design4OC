//
//  MECaretaker.h
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//  管理者类,主要用于得到和设置备忘录类

#import <Foundation/Foundation.h>
#import "MEMemento.h"


@interface MECaretaker : NSObject
@property (nonatomic , strong ) MEMemento* memento;
@end
