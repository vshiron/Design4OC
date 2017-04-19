//
//  PTStudent.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import "PTStudent.h"
@interface PTStudent()


@end
@implementation PTStudent

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        PTBook* book = [[PTBook alloc]init];
        book.bookName = @"新华字典";
        
        PTBook* bookA = [[PTBook alloc]init];
        book.bookName = @"A";
        
        PTBook* bookB = [[PTBook alloc]init];
        book.bookName = @"B";
        
        self.book = book;
        self.name = @"小明";
        self.age = 18;
        self.teachers = [NSMutableArray arrayWithObjects:@"张飞",@"刘备",@"关羽", nil];
        self.package=[NSMutableArray arrayWithObjects:bookA,bookB, nil];
    }
    return self;
}
-(id)copyWithZone:(NSZone *)zone{
    PTStudent* student = [[[self class] allocWithZone:zone]init];
    student.age = self.age;
    student.book = [self.book copy];
    //这里会深复制,再开辟内存空间
    student.name = [NSString stringWithFormat:@"%@",self.name];
    student.teachers = [NSMutableArray arrayWithArray:self.teachers];
    //NSMutableArray<PTBook*> *package;
    student.package = [NSMutableArray array];
    
    //通过遍历的方法来深复制
//    [self.package enumerateObjectsUsingBlock:^(PTBook * _Nonnull book, NSUInteger idx, BOOL * _Nonnull stop) {
//        [student.package addObject:[book copy]];
//    }];

    //后来发现一种不需要遍历的方法
    student.package= [[NSMutableArray alloc] initWithArray:self.package copyItems:YES];
    
    //这里是浅复制
    //指向的是常量区
    //student.name = [self.name copy];
    //此处数组可以复制,但是里面每一个元素的指针都是没有被复制的,和原来的类型指向同一内容
    //student.teachers = [self.teachers mutableCopy];
//    student.package = [NSMutableArray mutableCopy];
    return student;
}

@end
