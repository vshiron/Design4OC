//
//  Memento.m
//  Design4OC
//
//  Created by vshiron on 17/4/10.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MEOriginator.h"
#import "MECaretaker.h"
#import "MEMemento.h"
@interface Memento : XCTestCase

@end

@implementation Memento

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    
    //可以独立存在,不依赖管理类和备忘录类
    MEOriginator * originator = [[MEOriginator alloc]init];
    originator.state = @"On";
    [originator show];
    
    //创建管理者类,保存originator的状态信息
    MECaretaker * caretaker = [[MECaretaker alloc]init];
    caretaker.memento = [originator creatMemento];
    //修改状态
    originator.state = @"Off";
    [originator show];
    //恢复状态
    [originator setMemento:caretaker.memento];
    [originator show];

    
    NSLog(@"--------");

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
