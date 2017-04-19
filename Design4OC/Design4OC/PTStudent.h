//
//  PTStudent.h
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PTBook.h"
@interface PTStudent : NSObject<NSCopying>

@property (nonatomic , strong ) PTBook *book;
@property (nonatomic , strong ) NSString *name;
@property (nonatomic , assign ) int age;
@property (nonatomic , strong ) NSMutableArray<NSString*> *teachers;
@property (nonatomic , strong ) NSMutableArray<PTBook*> *package;

@end
