//
//  Design4OCTests.m
//  Design4OCTests
//
//  Created by vshiron on 17/3/29.
//  Copyright © 2017年 Apress. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Design4OCTests : XCTestCase

@end

@implementation Design4OCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSMutableArray* array = [NSMutableArray array];
    [array addObject:@"a"];
    [array addObject:@"b"];
    [array addObject:@"c"];
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@", array[idx]);
    }];
    array = nil;
    [array addObject:@"e"];
    [array addObject:@"f"];
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@", array[idx]);
    }];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
