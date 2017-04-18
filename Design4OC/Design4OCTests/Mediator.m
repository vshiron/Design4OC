//
//  Mediator.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MEMediator.h"
#import "MEStudent.h"
@interface Mediator : XCTestCase

@end

@implementation Mediator

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    MEMediator* mediator = [[MEMediator alloc]init];
    MEStudent * a = [[MEStudentA alloc] initWithMediator:mediator];
    MEStudent * b = [[MEStudentB alloc] initWithMediator:mediator];
    
    [mediator setStudentA:a];
    [mediator setStudentB:b];
    
    [a send:@"B,你好,可以给我抄一下你的试卷吗?"];
    [b send:@"A,您好,我们应该诚信考试,不能抄试卷"];

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
