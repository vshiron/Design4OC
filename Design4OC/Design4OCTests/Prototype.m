//
//  Prototype.m
//  Design4OC
//
//  Created by vshiron on 17/4/18.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PTBook.h"
#import "PTStudent.h"
@interface Prototype : XCTestCase

@end

@implementation Prototype

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    

    PTStudent* student = [[PTStudent alloc]init];
    
    PTStudent* otherStudent = [student copy];

    NSLog(@"%@",otherStudent);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
